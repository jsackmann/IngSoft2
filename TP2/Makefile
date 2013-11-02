.SUFFIXES: .md .html .pdf
.PRECIOUS: %.tex %.html

.md.html: 
	~/.cabal/bin/pandoc --toc --mathjax=MathJax/MathJax.js\
          --template=impress-template.html\
          -V impress-url=impress.js -s -t html5\
          -f markdown --section-divs -o $@ $<

informe:
	pdflatex informe
	pdflatex informe

.md.tex:
	~/.cabal/bin/pandoc --slide-level=2 --toc -H header.tex --listings\
		-V theme:default -V colortheme:wolverine -i \
		-s -t beamer -f markdown -o $@ $<

%.pdf: %.tex
	pdflatex $<
	pdflatex $<

.PHONY: clean

clean: 
	rm -rf informe.pdf *.toc *.log *.aux *.snm *.vrb slides.html slides.pdf slides.tex *.nav *.out
