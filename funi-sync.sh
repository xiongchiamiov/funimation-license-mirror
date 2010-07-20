#!/bin/sh

cd ~/Documents/funimation-license-mirror
git checkout master && git pull && cp funi.rb /tmp/funi.rb
git checkout gh-pages && git pull && ruby /tmp/funi.rb > index.html && git commit -am 'automated update' && git push
