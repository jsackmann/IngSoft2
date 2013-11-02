informe:
	pdflatex informe
	pdflatex informe

%.pdf: %.tex
	pdflatex $<
	pdflatex $<

.PHONY: clean

clean: 
	rm -rf informe.pdf *.toc *.log *.aux *.snm *.vrb *.nav *.out
