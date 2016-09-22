#!/bin/bash

cd build
git init
git config user.email "deployment@mau-mau.ch"
git config user.name "Magical Deployment Bot"
git remote add origin git@github.com:mau-mau-ch/mau-mau-ch.github.io.git
git commit --allow-empty -am "Site update `date -u "+%Y.%m.%d-%H:%M:%S"`"
git push --set-upstream origin master
git push -f
