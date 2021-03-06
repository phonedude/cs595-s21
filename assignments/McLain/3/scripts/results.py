# Darin McLain
# CS595 - Web Security - ODU - Spring 2021
# Assignment 3
# 
# Script to read cookies.json and output results to markdown table file

import requests
import json
import os
import re
from pytablewriter import MarkdownTableWriter
import statistics

parentDirectory = os.path.abspath(os.path.join(os.getcwd(), os.pardir))
assetsDirectory = os.path.join(parentDirectory, "3", "assets")

with open(os.path.join(assetsDirectory, "cookies.json")) as json_file:
    data = json.load(json_file)

results = []
cookies = list()
headers = ["URL", "Final Status Code", "No. of Cookies", "Redirects", "HttpOnly", 
    "Secure", "SameSite", "Strict", "Lax", "None", "Path", "Not /"]
for url in data:
    cookies.append(data[url]["Cookies"])
    result = (url, data[url]["StatusCode"], data[url]["Cookies"], data[url]["Redirects"], data[url]["HttpOnly"], 
        data[url]["Secure"], data[url]["SameSite"], data[url]["Strict"], data[url]["Lax"], data[url]["None"], 
        data[url]["Path"], data[url]["NotSlash"])
    results.append(result)
    #https://github.com/thombashi/pytablewriter
    
writer = MarkdownTableWriter(
        table_name="Cookie Results",
        headers = headers,
        value_matrix=results
    ) 

minCookie = min(cookies)
maxCookie = max(cookies)
meanCookie = statistics.mean(cookies)
medianCookie = statistics.median(cookies)

with open("assets/results.txt", "w") as headerfile:            
    # output markdown table 
    headerfile.write(str(writer))

    #write stats in markdown format
    headerfile.write('\n')
    headerfile.write('### Cookie Stats\n\r')
    headerfile.write('#### Min\n')
    headerfile.write('* ' + str(minCookie) + '\n\r')
    headerfile.write('#### Max\n')
    headerfile.write('* ' + str(maxCookie) + '\n\r')
    headerfile.write('#### Mean\n')
    headerfile.write('* ' + str(meanCookie) + '\n\r')
    headerfile.write('#### Median\n')
    headerfile.write('* ' + str(medianCookie) + '\n\r')