#!/bin/bash

input="LBART001@ODU.EDU"

while IFS= read -r line
do
	echo "<iframe src=\"http://$line\"></iframe>" > "$line.html"
done < "$input"
