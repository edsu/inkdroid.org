all:
	pandoc -V geometry:margin=1in ehs.md -o ehs.pdf
	pandoc ehs.md -o ehs.latex
	pandoc ehs.md -o ehs.docx
	mv ehs.docx ehs.doc

	pandoc header.md ehs.md -o body.html
	echo '<html><head><meta charset="utf-8"><title>Ed Summers CV</title><link rel="stylesheet" href="/ehs/style.css"></head><body>' > index.html
	cat body.html >> index.html
	echo "</body></html>" >> index.html
	rm body.html
