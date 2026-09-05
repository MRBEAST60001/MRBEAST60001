.PHONY: all clean
all: main.pdf
main.pdf: main.tex references.bib
	latexmk -pdf -interaction=nonstopmode main.tex
clean:
	latexmk -C
	rm -f main.bbl main.run.xml
