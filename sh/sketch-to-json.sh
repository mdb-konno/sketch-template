#!/bin/sh

if [ $# != 2 ]; then
  echo "Specify the sketch file and then execute."
  exit 1
fi

outPath=$2

if [ -f ${fileData} ]; then
  unzip -o "./Source Files/$1.sketch" -d ${outPath}
  find . -name '*.json' -exec sh -c 'cat {} | jq -rS . > {}.1 && mv {}.1 {}' \;
  rm -rf ${outPath}/__MACOSX ${outPath}/.DS_Store
  echo -e "\n\n 🛠 Done output! \n\n"
fi