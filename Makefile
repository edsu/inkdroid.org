all: resume build_full rsync

indexes:
	touch feed.xml
	touch index.html

serve: indexes
	jekyll serve 

quick: build rsync

build_full: indexes
	JEKYLL_ENV=production jekyll build

build: indexes
	JEKYLL_ENV=production jekyll build --incremental

rsync:
	rsync -ar --exclude '.dat' --rsh='ssh -p22334' _site/ ed@inkdroid.org:/var/www/inkdroid.org

resume: 
	pandoc -V geometry:margin=1in cv-short.md -o cv-short.pdf
	pandoc cv-short.md -o cv-short.docx
	cd ehs && make
