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
