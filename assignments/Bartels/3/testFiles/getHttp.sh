#!/bin/bash

response=$(grep "HTTP" "filtered-godaddy.com.txt" | tac)

read -a httpStatus <<< "$response"

echo ${httpStatus[1]}

declare -a httpStatus
httpStatus=()

declare -p httpStatus

response=$(grep "HTTP" "filtered-abril.com.br.txt" | tac)

read -a httpStatus <<< "$response"

echo ${httpStatus[1]}
