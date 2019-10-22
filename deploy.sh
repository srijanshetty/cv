#!/usr/bin/env bash

set -e

branch=$(git rev-parse --abbrev-ref HEAD)

# if [[ $branch == "master" ]]; then
#     xelatex cv
#     git checkout gh-pages
#     # pdf2htmlEX --process-outline 0 --zoom 1.6 cv.pdf
#     # mv cv.html index.html
#     # git add index.html
#     git add cv.pdf
#     git commit -m "build(auto): Update to Website"
#     git push origin gh-pages
#     git checkout master
# fi

if [[ $branch == "master" ]]; then
    xelatex cv
    cp cv.pdf index.pdf
    git checkout gh-pages
    mv index.pdf cv.pdf
    git add cv.pdf
    git commit -m "build(auto): Update to Website"
    git push origin gh-pages
    git checkout master
fi
