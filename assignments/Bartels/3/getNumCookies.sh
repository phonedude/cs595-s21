#!/bin/bash

input="filteredFiles.txt"
declare -a numCookies
numCookies=()

while IFS= read -r line
do
	cookieCount=$(grep -i -c "set-cookie" "$line")
	numCookies+=("$cookieCount")
done < "$input"

python3.8 calculateCookieStats.py ${numCookies[@]}
