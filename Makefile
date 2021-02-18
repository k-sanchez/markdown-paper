all: pdf

pdf: ms.pdf
docx: ms.docx

ms.pdf: ms.md references.bib
	pandoc \
		-s \
		--bibliography references.bib \
		--filter pandoc-fignos \
		--filter pandoc-tablenos \
		--filter pandoc-eqnos \
		--filter pandoc-citeproc \
		ms.md -o ms.pdf

ms.docx: ms.md references.bib
	pandoc \
		-s \
		--bibliography references.bib \
		--filter pandoc-fignos \
		--filter pandoc-tablenos \
		--filter pandoc-eqnos \
		--filter pandoc-citeproc \
		ms.md -o ms.docx

.PHONY: clean
clean:
	${RM} ms.pdf ms.docx
