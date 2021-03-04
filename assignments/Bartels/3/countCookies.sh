#!/bin/bash

input="filteredFiles.txt"
output="headerStats.txt"

while IFS= read -r line
do
	response=$(grep "HTTP" "$line" | tac)
	declare -a httpStatus
	httpStatus=()
	read -a httpStatus <<< "$response"

	echo "$line" >> "$output"
	echo "Terminating status code:" >> $output
	echo "${httpStatus[1]}" >> "$output"
	
	echo "Number of Cookies:" >> "$output"
	grep -i -c "set-cookie" "$line" >> "$output"

	echo "Number of HttpOnly cookies:" >> "$output"
	grep -i -c "httponly" "$line" >> "$output"

	echo "Number of Secure cookies:" >> "$output"
	grep -i -c "secure" "$line" >> "$output"

	echo "Number of SameSite cookies:" >> "$output"
	grep -i -c "samesite" "$line" >> "$output"

	echo "Number of Strict SameSite cookies:" >> "$output"
	grep -i -c "strict" "$line" >> "$output"

	echo "Number of Lax SameSite cookies:" >> "$output"
	grep -i -c "lax" "$line" >> "$output"

	echo "Number of None SameSite cookies:" >> "$output"
	grep -i -c "none" "$line" >> "$output"

	echo "Number of cookies that set path:" >> "$output"
	grep -i -c "path=" "$line" >> "$output"

	echo "Number of paths other than /:" >> "$output"
	grep -i -c "path=/[a-zA-Z0-9]" "$line" >> "$output"

done < "$input"
