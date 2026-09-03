#!/usr/bin/env bash

set -e

xelatex cv
mv cv.pdf docs/

xelatex resume
mv resume.pdf docs/

xelatex ciso
mv ciso.pdf docs/
