all:main.pdf

main.pdf: main.tex ref.bib
	latexmk -xelatex main.tex

.PHONY: clean
clean:
	-rm *.pdf *.log *.blg *.bbl *.aux *.fdb_latexmk *.fls
