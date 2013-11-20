.SUFFIXES: .md .html .pdf
.PRECIOUS: %.tex %.html

.md.tex:
	~/.cabal/bin/pandoc --slide-level=2 --toc -H header.tex --listings\
		-V theme:Warsaw -V colortheme:crane \
		-s -t beamer -f markdown -o $@ $<

%.pdf: %.tex
	pdflatex $<
	pdflatex $<

.PHONY: clean

all: slides.pdf

clean: 
	rm -rf *.pdf *.toc *.log *.aux *.snm *.vrb *.nav *.out slides.tex
