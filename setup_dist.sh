#!/bin/bash

cp app/index.html dist/
cp app/wpd.min.js dist/
cp app/img-2-data.js dist/
cp **/*.css dist/
cp **/*.ico dist/
cp **/*.png dist/
cp -r app/images dist/
cp -r app/node_modules dist/
cp .github/README.md dist/