#!/bin/sh
DATE=`date`
git remote set-url origin git@github.com:citaty-svyatyh/kick-modular.nvim
git add -A .
git commit -m "$DATE" 
git push -f
