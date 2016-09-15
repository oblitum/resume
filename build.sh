#!/usr/bin/env bash

json_resume convert --out=md resume.json

mv -f resume.md readme.md

json_resume convert --out=html resume.json

json_resume convert --out=tex resume.json

# Fix LaTeX before make
sed -i 's/\&amp;/\&/' resume.tex
sed -i 's/~/$\\sim$/' resume.tex

latexmk -xelatex resume.tex > /dev/null 2>&1
rm -f resume.aux resume.fdb_latexmk resume.fls resume.log resume.out
mv -f resume.pdf francisco-resume.pdf
