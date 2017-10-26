all: bib build_full resume sync

indexes:
	touch feed.xml
	touch index.html

bib:
	cp ~/Dropbox/BibDesk/citations.bib citations.bib

serve: indexes bib
	jekyll serve 

quick: bib build sync

build_full: indexes
	JEKYLL_ENV=production jekyll build

build: indexes
	JEKYLL_ENV=production jekyll build --incremental

sync:
	rsync -ar --rsh='ssh -p22334' _site/ ed@inkdroid.org:/var/www/inkdroid.org

resume: 
	pandoc ehs.md -o ehs.pdf
	pandoc ehs.md -o ehs.latex
	pandoc ehs.md -c https://inkdroid.org/ehs.css -o ehs.html
	pandoc ehs.md -o ehs.docx
	mv ehs.docx ehs.doc
