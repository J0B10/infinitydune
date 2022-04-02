#!/bin/bash

# check if all required files exist

if [ ! -f overrides.txt ]; then
    >&2 echo "missing overrides.txt"
    exit 1
fi

if [ ! -f manifest-template.json ]; then
    >&2 echo "missing manifest-template.json"
    exit 1
fi

if [ ! -f mods.txt ]; then
    >&2 echo "missing mods.txt"
    exit 1
fi

# uses https://github.com/jadc/modpack-manifest-generator
wget -nc "https://raw.githubusercontent.com/jadc/modpack-manifest-generator/1.2.1/generate.py"

if [ ! -f generate.py ]; then
    >&2 echo "missing generate.py"
    exit 1
fi

# cleanup old files
echo "cleanup out"
rm -rf out

# copy overrides

echo "Copy overrides:"
while read f; do
  mkdir -p "out/overrides/$f"
  cp -r -T "../$f" "out/overrides/$f"
  echo "    copied $f"
done <overrides.txt

cp "../LICENSE" "out"

# generate manifest

echo "Generating manifest:"
python3 generate.py

echo "Copy manifest"
mv manifest.json out

echo "Done."
