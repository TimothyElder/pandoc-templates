# For generating a syllabus style memo. Relies upon the memo.template
# in my .pandoc directory (the pandoc-tamplates repo on my github). The 
# main think to remember is that it uses the chicago-syllabus style csl
# file.

## All Markdown Files in the working directory
SRC = $(wildcard *.md)

## Location of Pandoc support files.
PREFIX = /Users/timothyelder/.pandoc

## Location of your working bibliography file
BIB = /Users/timothyelder/Documents/bibs/socbib-pandoc.bib

## CSL stylesheet (located in the csl folder of the PREFIX directory).
CSL = chicago-syllabus

## Pandoc options to use
OPTIONS = markdown+simple_tables+table_captions+yaml_metadata_block+smart

PDFS=$(SRC:.md=.pdf)
HTML=$(SRC:.md=.html)
TEX=$(SRC:.md=.tex)

all:	$(PDFS) $(TEX)
pdf:	clean $(PDFS)
tex:	clean $(TEX)


%.tex:	%.md
	pandoc -r $(OPTIONS) -w latex -s --pdf-engine=xelatex --template=$(PREFIX)/templates/xelatex.template --filter pandoc-xnos --citeproc --csl=$(PREFIX)/csl/$(CSL).csl --bibliography=$(BIB) -o $@ $<

%.pdf:	%.md
	pandoc -r $(OPTIONS) -s --pdf-engine=xelatex --template=$(PREFIX)/templates/memo.template --filter pandoc-xnos --citeproc --csl=$(PREFIX)/csl/$(CSL).csl --bibliography=$(BIB) -o $@ $<

clean:
	rm -f *.html *.pdf *.tex *.docx