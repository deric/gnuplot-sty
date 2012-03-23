PDFLATEX = pdflatex

all: *.tex
	$(PDFLATEX) -shell-escape $<

clean:
	rm -f *.log *.aux *.bbl *.blg *.lof *.lot *.dvi *.toc *.out *~ *.ps *.pdf *.plt output/*.plt output/*.pdf