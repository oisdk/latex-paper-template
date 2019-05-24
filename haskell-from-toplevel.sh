#!/bin/bash
withcode=$1
nocode=${withcode#"haskell/"}
cd haskell || exit
file=$(basename "$nocode" .lhs).tex
lhs2TeX -o "$file" "$nocode"
