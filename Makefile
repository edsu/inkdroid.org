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

login:
	bundle exec dotenv _scripts/mayfirst_login

rsync: login
	rsync --recursive _site/ inkdroid@shell.mayfirst.org:web

	# only want to clean out dropbox with delete otherwise we would blow
	# away https://inkdroid.org/web-archives/
	rsync --recursive dropbox/ inkdroid@shell.mayfirst.org:web/dropbox --delete

cv: 
	cd ehs && make

robots:
	curl --silent -o robots.txt https://raw.githubusercontent.com/ai-robots-txt/ai.robots.txt/main/robots.txt
