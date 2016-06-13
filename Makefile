all: application.md
	pandoc application.md --latex-engine=xelatex -o application.pdf --bibliography ~/Library/UFII-methods-metabarcoding.bib
