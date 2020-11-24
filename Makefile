all: bib resume build_full rsync

indexes:
	touch feed.xml
	touch index.html

bib:
	cp ~/Dropbox/JabRef/citations.bib citations.bib

serve: indexes bib
	jekyll serve 

quick: bib build rsync

build_full: indexes
	JEKYLL_ENV=production jekyll build

build: indexes
	JEKYLL_ENV=production jekyll build --incremental

rsync:
	rsync -ar --exclude '.dat' --rsh='ssh -p22334' _site/ ed@inkdroid.org:/var/www/inkdroid.org

resume: 
	pandoc cv-short.md -o cv-short.pdf
	pandoc cv-short.md -o cv-short.docx
	cd ehs && make
