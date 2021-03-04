#!/bin/bash

input="responseFiles.txt"

while IFS= read -r line
do
	grep "^HTTP" "$line" >> "filtered-$line"
	grep -i "^set-cookie" "$line" >> "filtered-$line"
	echo "filtered-$line" >> "filteredFiles.txt"
done < "$input"
