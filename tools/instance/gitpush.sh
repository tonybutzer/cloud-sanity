#! /bin/bash

git config --global user.email "tonybutzer@gmail.com"
git config --global user.name tonybutzer

git config --global push.default simple

## git remote set-url origin git@github.com:tonybutzer/cog.git

git add .
git commit -m 'prototype phase'
git push
