all: full_build sync

build:
	touch feed.xml
	touch index.html
	JEKYLL_ENV=production jekyll build

full_build:
	JEKYLL_ENV=production jekyll build --full-rebuild

sync: build
	rsync -ar --rsh='ssh -p22334' _site/ ed@inkdroid.org:/var/www/inkdroid.org
