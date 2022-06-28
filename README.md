I was bored with all the boring templates out there and hence this template came into existence.
Behold my CV.

I don't know how to create .sty files yet, so you'll have to make do with the defined environments.

# Dependencies

- Fonts
  Install Fontin which has been bundled with this package

# Instructions

- The following should work proviso you have all the dependencies listed above.

```shell
xelatex cv
```

- I like to use pdf2htmlEX to create a gh-pages branch with the HTML version of the PDF.
  Additionally I have a post-commit hook which automatically generates the HTML version.
  (You need to copy the contents of pdf2htmlEX to /usr/share/pdf2htmlEX for a good html
  version to be renedered).

```shell
#!/usr/bin/env bash

set -e

branch=$(git rev-parse --abbrev-ref HEAD)

if [[ $branch == "master" ]]; then
    xelatex cv
    git checkout gh-pages
    pdf2htmlEX --process-outline 0 --zoom 1.6 cv.pdf
    mv cv.html index.html
    git add index.html
    git commit -m "Update to Website"
    git push origin gh-pages
    git checkout master
fi
```

# FAQ's

- What's in it?
  Different environments for my Frankenstein use-cases.
  If you think my design sense is bad, you're probably thinking right.

- Where's the documentation?
  Le documentation. I shall add more as soon as I get the time (read never).

# Attribution

This template takes elements from the Alessandro Plasmati's resume template but has been heavily modified
to my aesthetic sensibilities (which more often than not might be bad).

Share the love and my name 😄
