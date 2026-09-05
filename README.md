# The Stubborn Prior

Research proposal: *When false scientific beliefs distort AI research policy.*

## Build

```
latexmk -pdf main.tex
```

or `make`. Requires a TeX Live with `booktabs`, `pgfplots`, `tikz`, `natbib`, `mathptmx`, `microtype`.

## Files

- `main.tex` — the manuscript.
- `references.bib` — verified references (every entry checked against arXiv, publisher, or proceedings pages; unverifiable fields are noted in the entry).
- `main.pdf` — compiled output.
- `OPEN_QUESTIONS.md` — decisions that need PI input; nothing there has been silently decided in the text.

Red `[TODO: ...]` markers in the PDF are values that must be pulled from the experiment logs, which are not in this repository.
