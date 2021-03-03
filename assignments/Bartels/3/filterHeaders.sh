#!/bin/bash

input="responseFiles.txt"

while IFS= read -r line
do
	grep -E "HTTP|Set-Cookie" "$line" > "filtered-$line"
	echo "filtered-$line" >> "filteredFiles.txt"
done < "$input"
