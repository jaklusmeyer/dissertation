default: thesis

thesis: main.tex
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex
	pdflatex main.tex
	mv main.pdf thesis.pdf
	open thesis.pdf
clean:
	rm -f *.aux *.log *.toc *.lof
	rm -f *.lot *.out *.bbl *.blg
	rm -f *.fls
