#!/bin/bash 

pushd /home/cjhanks/repos/UDT 
pushd UDT4
    cvs update -dPA
popd 

pushd UDT5
    cvs update -dPA
popd 

git add .
git commit -a -m "Snapshot Update: `date -u`" 
git push origin master 
popd 
