#!/bin/sh

cd ~/Documents/funimation-license-mirror
git checkout master && git pull && cp funi.py /tmp/funi.py
git checkout gh-pages && git pull && python /tmp/funi.py > index.html && git commit -am 'automated update' && git push
