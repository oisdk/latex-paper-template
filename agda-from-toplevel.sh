#!/bin/bash
withcode=$1
nocode=${withcode#"code/"}
cd code || exit
agda --latex --latex-dir=. "$nocode"
