#!/bin/bash
cd ~/Documents/
YYYY=$(date +%Y)
MM=$(date +%m)
FOLDER="$YYYY/$MM"
mkdir -p $FOLDER
cd $FOLDER
