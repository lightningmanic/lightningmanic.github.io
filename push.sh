#!/bin/bash
#
# first copy all content from scarab to here
shopt -s extglob
rm -rf !(push.sh)

cp -R ../scarab/* .

# now add all files to git
git add *

# commit
git commit -m $1

# push
git push origin master
