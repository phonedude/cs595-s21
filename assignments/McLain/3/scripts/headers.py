# Darin McLain
# CS595 - Web Security - ODU - Spring 2021
# Assignment 3
# 
# Script to take 100 URLs and Generate Output with Headers

import requests
import json
import os

parentDirectory = os.path.abspath(os.path.join(os.getcwd(), os.pardir))

# Take URLs assigned to me and place them in a list for iteration without keeping file read open
urls = list()
with open(os.path.join(parentDirectory, "3", "scripts", "urls.txt")) as outfile: 
   for line in outfile.readlines():
       urls.append(line.rstrip())

for url in urls:
    with open("assets/headers/" + url +".txt", "w") as headerfile:            
        try:
            agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:78.0) Gecko/20100101 Firefox/78.0"
            maxTime = 5
            result = os.popen("curl -ILksS --max-time " + str(maxTime) + " " + url).read()
           
            headerfile.write(result)

        except Exception as e:
            headerfile.write(str(e))
