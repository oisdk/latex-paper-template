#!/usr/bin/env bash

# Agda needs to be run in the source directory of the project to work
# correctly. This runs Agda on a file from within the agda directory.

cd agda || exit
agda --latex --latex-dir=. "${1#agda/}"
