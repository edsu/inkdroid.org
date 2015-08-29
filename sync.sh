#!/bin/sh

jekyll build

rsync -avr --rsh='ssh -p22334' --delete-after --delete-excluded  _site/  ed@inkdroid.org:/var/www/inkdroid.org

