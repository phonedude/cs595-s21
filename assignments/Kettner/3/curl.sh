#!/bin/bash

input="sites.txt"

while IFS= read -r line

do 

	curl -ILsk "$line" > "$line.txt"

done < "$input"


