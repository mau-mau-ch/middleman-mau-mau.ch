#!/bin/bash

cd build
git init
git config user.email "deployment@mau-mau.ch"
git config user.name "Magical Deployment Bot"
git remote add origin git@github.com:mau-mau-ch/mau-mau-ch.github.io.git

git fetch
git reset --hard origin/master

cd ..
bundle exec middleman build
cd build

git add .

git commit -m "Site update `date -u "+%Y.%m.%d-%H:%M:%S"`"
git push --force --set-upstream origin master
