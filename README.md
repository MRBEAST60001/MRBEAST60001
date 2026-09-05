# The Stubborn Prior

Research proposal: *When false scientific beliefs distort AI research policy.*

## Build

```
latexmk -pdf main.tex
```

or `make`. Requires TeX Live with `newtx`, `booktabs`, `pgfplots`, `tikz`, `natbib`, `titlesec`, `fancyhdr`, `microtype`.

## Files

- `main.tex` — the manuscript.
- `references.bib` — every entry checked against arXiv, publisher, or proceedings pages, including that the claim attributed to it appears in the paper.
- `main.pdf` — compiled output.
- `figures/` — TikZ/pgfplots sources for the two schematic figures, included by `main.tex`.
- `DATA_RECOVERY.md` — where every number in Sections 2 and 4.3 came from.
- `PI_NOTES.md` — open decisions for the PI; nothing there appears as a placeholder in the PDF.
