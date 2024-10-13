#!/bin/bash

printf -v path "+%s" "${@:2}"

if [[ "$1" =~ "/" ]] || [[ "$path" = "+" ]]; then
    curl "https://cht.sh/$1"
else
    curl "https://cht.sh/$1/${path#*+}"
fi
