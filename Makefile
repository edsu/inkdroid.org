all: build_full sync

quick: build sync

build_full:
	touch feed.xml
	touch index.html
	JEKYLL_ENV=production jekyll build --full-rebuild

build:
	touch feed.xml
	touch index.html
	JEKYLL_ENV=production jekyll build

sync:
	rsync -ar --rsh='ssh -p22334' _site/ ed@inkdroid.org:/var/www/inkdroid.org

resume: 
	pandoc ehs.md -o ehs.pdf
	pandoc ehs.md -o ehs.latex
	pandoc ehs.md -c https://inkdroid.org/ehs.css -o ehs.html
	pandoc ehs.md -o ehs.docx
	mv ehs.docx ehs.doc
