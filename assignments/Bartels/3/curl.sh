#!/bin/bash

input="LBART001@ODU.EDU"

while IFS= read -r line
do
	curl -ILskS "$line" > "$line.txt"
	echo "$line.txt" >> "responseFiles.txt"
done < "$input"

