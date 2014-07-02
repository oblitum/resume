#!/usr/bin/env bash

cp resume.json resume-for-tex.json
sed -i '' 's/C#/C\\\\#/' resume-for-tex.json
sed -i '' 's/\&amp;/\\\\\&/' resume-for-tex.json
sed -i '' 's/669#/669\\\\#/' resume-for-tex.json
sed -i '' 's/~/$\\\\sim$/' resume-for-tex.json
