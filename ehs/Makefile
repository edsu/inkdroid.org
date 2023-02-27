all: ehs.pdf ehs.md index.html

ehs.pdf: ehs.md
	pandoc -V geometry:margin=1in ehs.md -o ehs.pdf

index.html: ehs.md
	pandoc ehs.md -o ehs.latex
	pandoc header.md ehs.md -o ehs.docx
	pandoc header.md ehs.md -o body.html
	echo '<html><head><meta charset="utf-8"><title>Ed Summers CV</title><link rel="stylesheet" href="/ehs/style.css"></head><body>' > index.html
	cat body.html >> index.html
	echo "</body></html>" >> index.html
	rm body.html
