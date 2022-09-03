#!/bin/bash

function create () {
    source .env
    cd
    python $FOLDERPATH/repo-automation/main.py $1
    cd $FOLDERPATH/$1
    git init
    git remote add origin https://github.com/$USERNAME/$1.git
    touch README.md
    git add .
    git commit -m "Initial commit"
    git push -u origin master
}