all: Michonneau-UFII-proposal.pdf

application.pdf: application.md
	pandoc application.md --latex-engine=xelatex -o application.pdf --bibliography ~/Library/UFII-methods-metabarcoding.bib --csl=plos.csl

doc: application.md
	pandoc application.md -o application.docx --bibliography ~/Library/UFII-methods-metabarcoding.bib --csl=plos.csl

key-personnel.pdf: key-personnel.md
	pandoc key-personnel.md -o key-personnel.pdf --latex-engine=xelatex

Michonneau-UFII-proposal.pdf: application.pdf key-personnel.pdf
	pdftk application.pdf key-personnel.pdf biosketch_FM.pdf biosketch_MQM.pdf biosketch_JR.pdf biosketch_DS.pdf letter_support.pdf signature_sheet.pdf cat output Michonneau-UFII-proposal.pdf
