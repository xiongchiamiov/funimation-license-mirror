#!/bin/sh

cd ~/Documents/funimation-license-mirror
git checkout master && git pull && python2 funi.py > /tmp/index.html
git checkout gh-pages && git pull && cp /tmp/index.html index.html && git commit -am 'automated update' && git push
git checkout master
