#!/bin/bash

usage(){
  echo "Usage:"
  echo "  $0 [opts] chaine [filtre]"
}

opts=""
while [[ $1 == -* ]]; do
  opts="$opts $1"
    shift
done

chaine="$1"
filtre="$2"

if [ "$chaine" == "" ]; then
  usage
  exit 1
fi

if [ "$filtre" == "" ]; then
  find . -exec grep -i -H $opts "$chaine" '{}' \;
else
  find . -name "*$filtre*" -exec grep -i -H $opts "$chaine" '{}' \;
fi
