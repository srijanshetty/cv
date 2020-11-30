#!/usr/bin/env bash

set -e

xelatex cv
cp cv.pdf docs/

xelatex resume
cp resume.pdf docs/
