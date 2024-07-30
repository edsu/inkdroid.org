all: cv flickr robots build rsync robots

indexes:
	touch feed.xml
	touch index.html
	touch tags.md

serve: indexes
	bundle exec jekyll serve --incremental --drafts

build: indexes
	JEKYLL_ENV=production bundle exec jekyll build

flickr:
	bundle exec _scripts/flickr.rb

rsync:
	rsync --recursive _site/ inkdroid@didier.mayfirst.org:web

	# only want to clean out dropbox with delete otherwise we would blow
	# away https://inkdroid.org/web-archives/
	rsync --recursive dropbox/ inkdroid@didier.mayfirst.org:web/dropbox --delete

cv: 
	cd ehs && make

robots:
	curl -o robots.txt https://raw.githubusercontent.com/ai-robots-txt/ai.robots.txt/main/robots.txt
