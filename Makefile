all: cv build rsync

indexes:
	touch feed.xml
	touch index.html
	touch tags.md

serve: indexes
	bundle exec jekyll serve --incremental --drafts

build: indexes
	JEKYLL_ENV=production bundle exec jekyll build

rsync:
	rsync -r _site/ inkdroid@didier.mayfirst.org:web

cv: 
	cd ehs && make
