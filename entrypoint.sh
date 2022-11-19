#!/bin/bash

declare -i res

. ${IDF_PATH}/export.sh
ls -al
git describe
idf.py build
res=$?

echo "::set-output name=result::$res"
