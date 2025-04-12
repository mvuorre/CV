// Wrangle a Zotero better CSL YAML export to a bibliography display

#let yamlbib(contents) = {

  // Sort descending by year, month, id
  let items = contents.references.sorted(
      key: it => (
        it.issued.at(0).year,
        it.issued.at(0).month,
        it.issued.at(0).day
      ),
    ).rev()

  for (item) in items [
    #let authors = ()
    #for (a) in item.author { authors.push([#a.family]) }
    #let authors = authors.join(", ", last: " & ")
    #let title = item.title
    // Show dot? (If ends in "?" or "!", don't.)
    #let dot = item.title.ends-with(regex("[[:punct:]]")) == false
    #let year = item.issued.at(0).year
    #let publisher = {
      if item.type in ("article-journal", "webpage", "post-weblog") [
        #item.container-title.
      ] else if item.type == "speech" [
        #if "event-title" in item.keys() {[Presented at #item.event-title,]} #item.event-place.
      ] else if item.type in ("article", "thesis") [
        #item.publisher.
      ]
    }
    #let software = if item.type == "software" [ (#item.genre, v#item.version)]
    #let url = if "DOI" in item.keys() [
      #link("https://doi.org/" + item.DOI)
    ] else if "URL" in item.keys() [
      #link(item.URL)
    ] else { none }
    + #authors (#year). #emph[#title]#software#if dot [.] #publisher #url
  ]
}
