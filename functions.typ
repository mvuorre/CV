// Wrangle a Zotero better CSL YAML export to a bibliography display

/// Extract date information safely from bibliography items
///
/// Args:
///   item: Bibliography item dictionary
///   field: Date field name (default: "issued")
///
/// Returns: Named tuple with year, month, day (0 if missing)
#let extract-date(item, field: "issued") = {
  let date-field = item.at(field, default: ())
  if date-field.len() == 0 {
    return (year: 0, month: 0, day: 0)
  }
  let date = date-field.at(0)
  (
    year: date.at("year", default: 0),
    month: date.at("month", default: 0),
    day: date.at("day", default: 0),
  )
}

/// Format author list consistently across bibliography entries
///
/// Args:
///   authors: Array of author dictionaries with 'family' key
///
/// Returns: Formatted author string with proper conjunctions
#let format-authors(authors) = {
  if authors.len() == 0 { return "" }
  let formatted = authors.map(a => a.family)
  formatted.join(", ", last: " & ")
}

/// Determine appropriate publisher/venue information based on entry type
///
/// Args:
///   item: Bibliography item dictionary
///
/// Returns: Formatted publisher content or none
#let format-publisher(item) = {
  if item.type in ("article-journal", "webpage", "post-weblog") [
    #item.container-title.
  ] else if item.type == "speech" [
    #if "event-title" in item.keys() { [Presented at #item.event-title,] } #item.event-place.
  ] else if item.type in ("article", "thesis", "book") [
    #item.publisher.
  ]
}

/// Format software-specific metadata (genre and version)
///
/// Args:
///   item: Bibliography item dictionary
///
/// Returns: Software metadata content or none
#let format-software(item) = {
  if item.type == "software" {
    [ (#item.genre, v#item.version)]
  } else {
    none
  }
}

/// Generate appropriate links from DOI or URL fields
///
/// Args:
///   item: Bibliography item dictionary
///
/// Returns: Linked content or none
#let format-url(item) = {
  if "DOI" in item.keys() [
    #link("https://doi.org/" + item.DOI)
  ] else if "URL" in item.keys() [
    #link(item.URL)
  ] else {
    none
  }
}

/// Load and process YAML bibliography file into formatted entries
///
/// Args:
///   file: Path to YAML file containing bibliography data with 'references' array
///   types: Optional CSL item types to include
///
/// Returns: Formatted bibliography list sorted by date (newest first)
#let yaml-section(file, types: none) = {
  let contents = yaml(file)
  let references = if types == none {
    contents.references
  } else {
    contents.references.filter(item => item.at("type", default: none) in types)
  }
  // Sort descending by year, month, day with safe date extraction
  let items = references
    .sorted(
      key: it => {
        let date = extract-date(it)
        (date.year, date.month, date.day)
      },
    )
    .rev()

  for item in items [
    #let authors = format-authors(item.at("author", default: ()))
    #let title = item.title
    // Show dot? (If ends in "?" or "!", don't.)
    #let dot = not title.ends-with(regex("[[:punct:]]"))
    #let date = extract-date(item)
    #let year = date.year
    #let publisher = format-publisher(item)
    #let software = format-software(item)
    #let url = format-url(item)

    + #authors (#year). #emph[#title]#software#if dot [.] #publisher #url
  ]
}
