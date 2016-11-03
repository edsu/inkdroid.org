#!/bin/sh

echo "building"
#JEKYLL_ENV=production jekyll build --quiet --full-rebuild
JEKYLL_ENV=production jekyll build --quiet

echo "syncing"
rsync -ar --rsh='ssh -p22334' --delete-after _site/  ed@inkdroid.org:/var/www/inkdroid.org
