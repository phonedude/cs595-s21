#!/usr/bin/env python3

"""
4. Analysis
How many cookies set HttpOnly?
How many cookies set Secure?
How many cookies set SameSite? For those that set SameSite, how many are Strict? How many are Lax? How many are None?
How many cookies set a Path? How many of those are values other than "/"?
Summarizing the entire table, what are the Min/Max/Mean/Median number of cookies for the 100 sites?


url | status code | number of set-cookies | cookie no |HTTP-only | Secure | Same-site | Path 

"""

import os
import json
import csv

if __name__ == '__main__':
	with open("HJAYA002@ODU.EDU", "r") as f:
		urls = f.readlines()
	urls.pop(0) 
	with open ("out.json", "r") as f:
		content = f.read()
		json = json.loads(content)
	#print(json)
	#creating table
	with open ("data.csv", "w") as g:
		max_cookies = 14
		# i = 1
		# new = ""
		# while i < 16:		
		# 	x = f"{i}\t\t\t\t{i+1}"
		# 	i = i + 2
		# 	new = new + x 	
		# print(new)
		list = [str(x) for x in range(1,max_cookies + 1)]
		s = "\t\t\t\t"
		numbers = s.join(list) 
		#print(numbers)
		string = "\tHttpOnly\tSecure\tSameSite\tPath" * max_cookies
		g.write(f" \t \t \tTotal\t \t \t \t{numbers}\n")
		g.write(f"URL\tstatus-code\tnumber-of-cookies\tTotal-HttpOnly\tTotal-Secure\tTotal-SameSite\tTotal-Path{string}\n")

		for url in urls:
			url = url.strip("\n")
			status = json[url]['status-code']
			n_sc = json[url]['number-of-cookies']
			tot_httponly= 0
			tot_secure= 0
			tot_samesite= 0
			tot_path = 0
			httponly = "n"
			secure = "n"
			samesite = "n"
			path = "n"
			cookie_row = ""
			for i in range(n_sc):
				x = json[url]['cookie-parameters'][str(i)]
				keys = x.keys()
				#print(len(keys))
				if(len(keys) == 0):				
					#print("no keys")
					pass
				else:
					for key in keys:
						if key.lower() == "httponly":
							tot_httponly = tot_httponly + 1
							httponly = "y"
							
						if key.lower() == "secure":
							tot_secure = tot_secure + 1
							secure  = "y"

						if key.lower() == "samesite":
							tot_samesite = tot_samesite + 1
							samesite  = json[url]['cookie-parameters'][str(i)][key]
							samesite = samesite.strip("\n")

						if key.lower() == "path":
							tot_samesite = tot_samesite + 1
							path  = json[url]['cookie-parameters'][str(i)][key]
							path = path.strip("\n")

				row_val = f"{httponly}\t{secure}\t{samesite}\t{path}\t"
				cookie_row = cookie_row + row_val
			#print(cookie_row)
			#print(url,status,n_sc,tot_httponly,tot_secure,tot_samesite,tot_path,cookie_row)
			g.write(f"{url}\t{status}\t{n_sc}\t{tot_httponly}\t{tot_secure}\t{tot_samesite}\t{tot_path}\t{cookie_row}\n")



		



