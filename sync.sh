#!/bin/sh

echo "building"
jekyll build --quiet --full-rebuild

echo "syncing"
rsync -ar --rsh='ssh -p22334' --delete-after --delete-excluded  _site/  ed@inkdroid.org:/var/www/inkdroid.org

