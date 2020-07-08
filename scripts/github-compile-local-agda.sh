#!/usr/bin/env bash

# This script will compile the local Agda code for the paper, and
# cache the build and tex files. It will also produce .tex files for any
# .lagda files, and produce html for the Agda code and place it in
# main/agda/docs.
#
# It assumes the paper is stored in main, and the agda code in
# main/agda.
#
# It assumes that Agda is installed.
# 
# It will install basic TeX tools (texlive-binaries), as Agda needs
# it to produce the .tex files.
#
# It will copy the build artefacts to ~/main-build/_build.
#
# It also retrieves any build artefacts already stored in
# ~/main-build/_build. This allow Agda to do an incremental build.

# Retrieve old build artefact.
mkdir -p ~/main-build/_build
cp -f -R ~/main-build/_build main/agda/_build
rm -r ~/main-build

# Compile all Agda code (and generate html into docs)
cd main/agda
echo 'module Everything where' > Everything
find . -type f -regex '.*\.l?agda' | cut -c 3- | cut -f1 -d'.' | sed 's/\//\./g' | sed 's/^/open import /' >> Everything
mv Everything Everything.agda
agda --html --html-dir=docs Everything.agda
rm Everything.agda

# Compile all lagda files.
sudo apt-get install texlive-binaries
find . -type f -name '*.lagda' | while read -r code ; do
    agda --latex --latex-dir=. $code
done

# Cache output.
cd ..
cp -f -R agda/ ~/main-build/
