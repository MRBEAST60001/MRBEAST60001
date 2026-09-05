# The Stubborn Prior

Research proposal: *When false scientific beliefs distort AI research policy.*

## Build

```
latexmk -pdf main.tex
```

or `make`. Requires TeX Live with `libertinus`, `libertinust1math`, `fontsize`, `booktabs`, `pgfplots`, `tikz`, `natbib`, `titlesec`, `microtype`.

## Files

- `main.tex` — the manuscript.
- `references.bib` — verified references (every entry checked against arXiv, publisher, or proceedings pages; unverifiable fields are noted in the entry).
- `main.pdf` — compiled output.
- `figures/` — TikZ/pgfplots sources for the two schematic figures, included by `main.tex`.
- `DATA_RECOVERY.md` — where every preliminary-study statement came from, and what could not be recovered.
- `OPEN_QUESTIONS.md` — decisions that need PI input; nothing there has been silently decided in the text.
