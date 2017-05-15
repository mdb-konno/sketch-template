#!/bin/sh

if [ $# != 1 ]; then
  echo "Specify the sketch file and then execute."
  exit 1
fi

fileName=$1
fileData="./sketch/${fileName}.sketch"
dirPath="./json/"
dirName="./raw/"

if [ -f ${fileData} ]; then
  unzip -o ${fileData} -d ${dirPath}${dirName}
  find . -name '*.json' -exec sh -c 'cat {} | jq -rS . > {}.1 && mv {}.1 {}' \;
  rm -rf ${dirPath}${dirName}/__MACOSX ${dirPath}${dirName}/.DS_Store
  echo -e "\n\n 🛠 output json! \n\n"
fi