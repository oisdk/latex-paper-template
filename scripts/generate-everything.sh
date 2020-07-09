#!/usr/bin/env bash

# This script creates an Everything.agda file and generates html
# for all agda and literate agda files in the agda directory.

cd agda || exit
echo "module Everything where" > Everything
find . -type f \( -name "*.agda" -o -name "*.lagda" \) | cut -c 3- | cut -f1 -d'.' | sed 's/\//\./g' | sed 's/^/open import /' >> Everything
mv Everything Everything.agda
agda --html --html-dir=../docs Everything.agda
rm Everything.agda
