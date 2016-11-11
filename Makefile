all: full_build sync

build:
	JEKYLL_ENV=production jekyll build

full_build:
	JEKYLL_ENV=production jekyll build --full-rebuild

sync:
	rsync -ar --rsh='ssh -p22334' --delete-after _site/ ed@inkdroid.org:/var/www/inkdroid.org
