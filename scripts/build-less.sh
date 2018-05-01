#!/bin/bash
set -e

less() {
  input="$1"
  output="$(dirname "$1")/$(basename "$1" .less).scss"
  output="build/${output#src/}"

  node_modules/.bin/lessc \
    --plugin=npm-import \
    "$input" \
    "$output"
}

files=$(find src -name '*.less')
for file in $files
do
  less "$file"
done

rm build/**/*.less
