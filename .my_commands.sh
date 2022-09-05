#!/bin/bash

function create () {
    source .env
    echo "creating remote repo...."
    python $FOLDERPATH/repo-automation/main.py $1
    cd $FOLDERPATH/$1
    echo "initilizing local git....."
    git init
    echo "creating README"
    touch README.md
    git add .
    git commit -m "Initial commit"
    git branch -M main
    echo "add remote...."
    git remote add origin https://github.com/$USERNAME/$1.git
    echo "pushing to remote..."
    git push -u origin main
}