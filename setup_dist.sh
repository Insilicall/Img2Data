#!/bin/bash

cp app/index.html dist/
cp app/wpd.min.js dist/
cp **/*.css dist/
cp **/*.ico dist/
cp **/*.png dist/
cp -r app/images dist/
cp .github/README.md dist/

cd dist
npm install