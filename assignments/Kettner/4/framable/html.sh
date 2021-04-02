#!/bin/bash

input="sites.txt"

while IFS= read -r line

do
	echo "<iframe src=\"http://$line\"></iframe>" > "$line.html"

done < "$input"
