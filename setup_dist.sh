#!/bin/bash

mkdir -p dist
cp app/index.html dist/
cp app/wpd.min.js dist/
cp **/*.css dist/
cp **/*.ico dist/
cp **/*.png dist/
cp -r app/images dist/
cp -r app/node_modules dist/
cp package.json dist/
cp .github/README.md dist/