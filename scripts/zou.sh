#!/bin/bash
cd ~/Documents/
YYYY=$(date +%Y)
MM=$(date +%m)
DD=$(date +%d)
FOLDER="$YYYY/$MM/$DD"
mkdir -p $FOLDER
cd $FOLDER

