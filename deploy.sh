#!/bin/bash

cd build
git init
git remote add origin git@github.com:mau-mau-ch/mau-mau-ch.github.io.git
git commit --allow-empty -am "Site update `date -u "+%Y.%m.%d-%H:%M:%S"`"
git push -f
