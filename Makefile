all: bib resume build_full rsync dat

indexes:
	touch feed.xml
	touch index.html

bib:
	cp ~/Dropbox/BibDesk/citations.bib citations.bib

serve: indexes bib
	jekyll serve 

quick: bib build rsync

build_full: indexes
	JEKYLL_ENV=production jekyll build

build: indexes
	JEKYLL_ENV=production jekyll build --incremental

rsync:
	rsync -ar --exclude '.dat' --rsh='ssh -p22334' _site/ ed@inkdroid.org:/var/www/inkdroid.org

dat:
	cd _site ; dat sync

resume: 
	pandoc ehs.md -o ehs.pdf
	pandoc ehs.md -o ehs.latex
	pandoc ehs.md -c https://inkdroid.org/ehs.css -o ehs.html
	pandoc ehs.md -o ehs.docx
	mv ehs.docx ehs.doc

	pandoc ehs.md -o body.html
	echo '<html><head><meta charset="utf-8"><title>Ed Summers CV</title><link rel="stylesheet" href="/ehs.css"></head><body>' > ehs.html
	cat body.html >> ehs.html
	echo "</body></html>" >> ehs.html
	rm body.html
