#!/bin/sh

if [ $# != 1 ]; then
  echo "Specify the sketch file and then execute."
  exit 1
fi

fileName=$1
fileData="${fileName}.sketch"

if [ -f ${fileData} ]; then
  unzip -o ${fileData} -d ./dist/${fileName}
  find . -name '*.json' -exec sh -c 'cat {} | jq -rS . > {}.1 && mv {}.1 {}' \;
  rm -rf ./dist/${fileName}/__MACOSX ./dist/${fileName}/.DS_Store
  echo -e "\n\n output json! \n\n"
fi