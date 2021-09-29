#!/bin/bash

mkdir -p ~/gogs && cd ~/gogs
git init && git clone https://github.com/buildroot/buildroot.git
git remote add origin http://localhost:3000/bsa/repo1.git
rm -rf buildroot/.git && git add . && git commit -m "initial commit" && git push -u origin main
