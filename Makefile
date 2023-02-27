all: cv build_full rsync

indexes:
	touch feed.xml
	touch index.html
	touch tags.md

serve: indexes
	bundle exec jekyll serve --incremental --drafts

quick: cv build rsync

build_full: indexes
	JEKYLL_ENV=production bundle exec jekyll build

build: indexes
	JEKYLL_ENV=production bundle exec jekyll build --incremental

rsync:
	rsync -ar --exclude '.dat' --rsh='ssh -p22334' _site/ ed@inkdroid.org:/var/www/inkdroid.org

cv: 
	cd ehs && make
