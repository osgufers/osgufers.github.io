#!/bin/bash

read -p "Nome do arquivo: "  filename

if [  ! -z "$filename" -a "$filename" != " "  ]
  then
  TODAY=$(date +%Y-%m-%d)
  REPLACE="${filename// /_}"
  POSTNAME=$(echo "$REPLACE" | tr '[:upper:]' '[:lower:]')
  FULLNAME=$(echo _posts/${TODAY}-${POSTNAME}.md)
  echo $FULLNAME
  touch $FULLNAME
  else
    echo "Digite o nome do arquivo"
fi
