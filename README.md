# Matti's vita

- Export (Zotero) bibliography as "Better CSL YAML" to `cv.yaml`.
	- I've set up an auto export from a saved search
	- <https://retorque.re/zotero-better-bibtex/>
- Write Typst in `vuorre-matti.typ`
  - Use e.g. `#yaml-section("cv.yaml", types: ("software",))` to list bibliography entries of `type: software`
- `make` or `typst compile vuorre-matti.typ` to compile PDF
