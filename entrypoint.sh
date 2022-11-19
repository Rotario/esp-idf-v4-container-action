#!/bin/bash

declare -i res

. ${IDF_PATH}/export.sh
git config --global --add safe.directory /github/workspace
idf.py build
res=$?

echo "::set-output name=result::$res"
