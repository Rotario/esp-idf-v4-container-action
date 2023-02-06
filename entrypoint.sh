#!/bin/bash

declare -i res

. ${IDF_PATH}/export.sh
git config --global --add safe.directory /github/workspace

echo "Setting target to $INPUT_IDF_TARGET"
idf.py set-target $INPUT_IDF_TARGET
echo "Building..."
idf.py build

res=$?

echo "::set-output name=result::$res"
