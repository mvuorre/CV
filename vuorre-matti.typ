// CV - Matti Vuorre (mjvuorre@uvt.nl)
// https://github.com/mvuorre/CV

/* Imports */
#import "@preview/marge:0.1.0": sidenote
#import "functions.typ": *

/* Styles */
#set page(
  paper: "a4",
  margin: (
    top: 3cm,
    bottom: 3cm,
    x: 2.8cm,
  ),
  header: context {
    if (counter(page).get().at(0) > 1) [
      #align(right)[
        #set block(spacing: 0.6em)
        Matti Vuorre
        #line(length: 2.26cm, stroke: 0.5pt)
      ]
    ]
  },
  footer: context {
    if (counter(page).get().at(0) > 1) [
      #align(center)[#counter(page).display()]
    ] else [
      #align(center)[
        v#datetime.today().display()
        (#link("https://github.com/mvuorre/CV/raw/main/vuorre-matti.pdf")[latest])
      ]
    ]
  },
)
#set par(spacing: 1.2em, leading: 0.65em)
#set text(font: "Libertinus Serif", size: 12pt)
#set list(marker: [•], tight: false)
#show link: set text(fill: blue)
#show heading: it => [
  #set par(spacing: 0.8em)
  #set text(font: "Libertinus Serif", weight: "regular")
  #smallcaps(it.body)
]

/* Definitions */
#let year = sidenote.with(
  numbering: none,
  padding: 0.4cm,
  dy: 0.05em,
  gap: 0em,
  side: "left",
  format: it => {
    align(right)[#it.default]
  },
)

/* Content */
#text(size: 22pt)[#smallcaps([Matti Vuorre])] \
#text(size: 15.8pt)[#smallcaps([» Curriculum vitae])] \
#v(1em)

#grid(
  columns: (4fr, 4fr),
  rows: auto,
  gutter: 1em,
  [
    #set list(marker: [‣], tight: false)
    - Department of Social Psychology \
      Tilburg University \
      Prof. Cobbenhagenlaan 225 \
      5037 DB Tilburg \
      The Netherlands
  ],
  [
    #set list(marker: [‣], tight: false)
    - #link("mailto:mjvuorre@uvt.nl")
    - #link("vuorre.com")
    - #link("tilburguniversity.edu/staff/m-j-vuorre")
    - #link("orcid.org/0000-0001-5052-066X")
    - #link("github.com/mvuorre")
  ],
)

#block(fill: luma(240), inset: 1em, radius: 4pt, spacing: 2em)[
  #set par(justify: true)
  I am a psychological scientist at the Tilburg School of Social and Behavioral Sciences at Tilburg University, where I study cognition and well-being particularly in the context of digital environments using experimental, data science, and statistical methods.
]

= Academic positions

- #year("2023 - now")_Assistant Professor_, Department of Social Psychology, Tilburg University
- #year("2020")_Postdoctoral Researcher_, Oxford Internet Institute, University of Oxford
- #year("2018")_Postdoctoral Research Scientist_, Department of Psychology, Columbia University

= Education

- #year("2018")_PhD_, Columbia University, USA
- #year("2017")_MPhil_, Columbia University, USA
- #year("2015")_M.A_, Columbia University, USA
- #year("2013")_BSc (Hons)_, Victoria University of Wellington, New Zealand
- #year("2012")_BSc_, Victoria University of Wellington, New Zealand

= Research Funding

- #year("2024")Capturing the Digital Footprints of Video Game Play. Economic and Social Research Council. (_Co-I with K. Magnusson and PI A. Przybylski. £263,696._)
- Understanding the associations between online video game play and well-being in a representative Dutch sample. Tilburg University. (_Co-PI with M. Klincewicz. €8,577._)
- How does digitalization associate with brain aging? Tilburg University. (_Co-PI with S. M. Kia. €12,000._)
- #year("2023")Does the nose know? Validating immersive multisensory VR food environments to study eating behaviour. Tilburg University. (_Co-I with PI R. de Vries. €16,344._)
- #year("2022")Understanding video game play and mental health. Economic and Social Research Council. (_Co-I with Co-I K. Magnusson and PI A. Przybylski. £935,050._)
- #year("2021")The association between video game play and cognition. University of Oxford. (_PI. £10,000_)

= Honors & Awards

- #year("2016")Leo Rubinstein Endowed Fellowship (Columbia University)
- Graduate Student Travel Award (Psychonomic Society)
- #year("2015")Leo Rubinstein Endowed Fellowship (Columbia University)
- Edward E. Smith Memorial Award in Cognitive Neuroscience (Columbia University)
- Best Student Poster Award (Association for the Scientific Study of Consciousness)
- #year("2013")Dean's Fellowship (Columbia University),
- #year("2012")Postgraduate Research Scholarship (Victoria University of Wellington)
- School of Psychology Graduate Prize (Victoria University of Wellington)
- Victoria University Graduate Award (Victoria University of Wellington)

= Teaching

== Courses

- #year("2024 - now")Experimental research (Tilburg University)
- #year("2023 - now")Consumer Analytics using Big Data (Tilburg University)
- #year("2021")Experiments for Social Data Science (University of Oxford)

== Workshops

- #year("2025")Collaborative science in the age of software (Princeton University; #link("https://psych.princeton.edu/news-events/2025/matti-vuorre-assistant-professor-tilburg-university"))
- #year("2024")Bayesian regression modelling (University of Basel; #link("https://vuorre.com/workshop/"))
- #year("2023")Data visualization workshop (Tilburg University)
- #year("2020")Bayesian regression modelling with brms (University of Zürich; #link("https://vuorre.com/brms-workshop/"))
- #year("2019")Bayesian modelling with the Stan probabilistic programming language (Columbia University; #link("https://github.com/mvuorre/ulam")[https://github.com/mvuorre/ulam])
- #year("2018")Hierarchical modelling of change over time (University of Aberdeen)
- #year("2017")Within-subject mediation analysis for experimental data in cognitive psychology and neuroscience (Rutgers University; #link("https://github.com/mvuorre/2017-rutgers-mediation")[https://github.com/mvuorre/2017-rutgers-mediation])

== Teaching Assistantships

- #year("2018")Statistics for Behavioral Scientists (Columbia University)
- #year("2017")Introduction to Statistical Modeling in Psychology (Columbia University)
- #year("2016")Analysis of Change (Columbia University)
- #year("2015")Experimental Psychology: Human Behavior (Columbia University)
- #year("2014")The Science of Psychology (Columbia University)
- #year("2013")Visual Perception (Victoria University of Wellington)
- #year("2011")Introduction to Psychology (Victoria University of Wellington)


= Service to the Profession

- Member of the #link("https://www.tilburguniversity.edu/research/tilburg-young-academy/members")[Tilburg Young Academy]
- TSB Faculty ambassador to the #link("https://www.tilburguniversity.edu/research/open-science-community")[Tilburg Open Science Community]
- Recommender at #link("https://rr.peercommunityin.org/public/user_public_page?userId=1570")[Peer Community In Registered Reports]
- Editor for the #link("https://www.cos.io/meta")[Instagram Data Access Pilot for Well-being Research]

I have acted as a peer reviewer for Advances in Methods and Practices in Psychological Science; Acta Psychologica; Attention, Perception, & Psychophysics; British Journal of Mathematical and Statistical Psychology; Communication Research; International Journal of Psychology; John Templeton Foundation; Journal of Adolescence; Journal of Consciousness Studies; Journal of the Experimental Analysis of Behavior; Journal of Experimental Psychology: General; Nature Human Behaviour; Peer Community In Registered Reports; Psychological Science; Psychology of Consciousness; and Royal Society Open Science. I always sign my reviews.

= Publications & Academic Contributions

See #link("https://www.zotero.org/vuorre")[Zotero] or #link("https://scholar.google.com/citations?hl=en&user=I4DSy-8AAAAJ&view_op=list_works&sortby=pubdate")[Google Scholar] for the most up-to-date list of my publications.

== Publications

// Turn off link coloring
// #show link: set text(fill: black)

#yamlbib(yaml("cv-publications.yaml"))

== Presentations

#yamlbib(yaml("cv-presentations.yaml"))

== Software

#yamlbib(yaml("cv-software.yaml"))

== Public Engagement & Media

#yamlbib(yaml("cv-press.yaml"))

== Other writing

#yamlbib(yaml("cv-other.yaml"))
