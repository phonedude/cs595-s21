#!/bin/bash

str=$(grep -i "path=/[a-zA-Z]" "test.txt")

echo "$str"
