#!/bin/bash

cd build
git init
git config user.email "deployment@mau-mau.ch"
git config user.name "Magical Deployment Bot"
git add .

git remote add origin git@github.com:mau-mau-ch/mau-mau-ch.github.io.git
git branch -u origin/master
git fetch

git commit --allow-empty -m "Site update `date -u "+%Y.%m.%d-%H:%M:%S"`"
git push --force --set-upstream origin master
