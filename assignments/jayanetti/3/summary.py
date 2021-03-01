#!/usr/bin/env python3

import os
import json
import csv
from statistics import median

def avg(numbers):
    return sum(numbers) / len(numbers)

if __name__ == '__main__':
	with open("HJAYA002@ODU.EDU", "r") as f:
		urls = f.readlines()
	urls.pop(0) 
	with open ("out.json", "r") as f:
		content = f.read()
		json = json.loads(content)	#creating table

	with open ("data.tsv", "w") as g:
		max_cookies = 14
		list = [str(x) for x in range(1,max_cookies + 1)]
		s = "\t\t\t\t"
		numbers = s.join(list) 
		#print(numbers)
		n_sc_list = []
		string = "\tHttpOnly\tSecure\tSameSite\tPath" * max_cookies
		g.write(f" \t \t \tTotal\t \t \t \t{numbers}\n")
		g.write(f"URL\tstatus-code\tnumber-of-cookies\tTotal-HttpOnly\tTotal-Secure\tTotal-SameSite\tTotal-Path{string}\n")
		HttpOnly = 0
		Secure = 0
		SameSite = 0
		SameSite_strict = 0
		SameSite_lax = 0
		SameSite_none = 0
		Path = 0
		Path_other = 0
		for url in urls:
			url = url.strip("\n")
			status = json[url]['status-code']
			n_sc = json[url]['number-of-cookies']
			n_sc_list.append(n_sc)
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
					httponly = "n"
					secure = "n"
					samesite = "n"
					path = "n"
				else:
					for key in keys:
						if key.lower() == "httponly":
							tot_httponly = tot_httponly + 1
							httponly = "y"
							HttpOnly = HttpOnly + 1
							
						if key.lower() == "secure":
							tot_secure = tot_secure + 1
							secure  = "y"
							Secure = Secure + 1

						if key.lower() == "samesite":
							tot_samesite = tot_samesite + 1
							samesite  = json[url]['cookie-parameters'][str(i)][key]
							samesite = samesite.strip("\n")
							SameSite = SameSite + 1
							if samesite.lower() == "strict": 
								SameSite_strict = SameSite_strict + 1
							if samesite.lower() == "lax": 
								SameSite_lax = SameSite_lax + 1
							if samesite.lower() == "none": 
								SameSite_none = SameSite_none + 1
						if key.lower() == "path":
							tot_path = tot_path + 1
							path  = json[url]['cookie-parameters'][str(i)][key]
							path = path.strip("\n")
							Path = Path + 1
							if path != "/":
								Path_other = Path_other + 1
				row_val = f"{httponly}\t{secure}\t{samesite}\t{path}\t"
				cookie_row = cookie_row + row_val
			#print(cookie_row)
			#print(url,status,n_sc,tot_httponly,tot_secure,tot_samesite,tot_path,cookie_row)
			g.write(f"{url}\t{status}\t{n_sc}\t{tot_httponly}\t{tot_secure}\t{tot_samesite}\t{tot_path}\t{cookie_row}\n")
	#print(n_sc_list)
	num_list = [int(x) for x in n_sc_list]
	min_number = min(num_list)
	max_number = max(num_list)
	avg_number = avg(num_list)
	median_number = median(num_list)
	#print(min_number,max_number,avg_number,median_number)
	print("SUMMARY")
	print(f"HttpOnly: {HttpOnly}")
	print(f"Secure: {Secure}")
	print(f"SameSite: {SameSite}")
	print(f" Strict: {SameSite_strict}")
	print(f" Lax: {SameSite_lax}")
	print(f" None: {SameSite_none}")
	print(f"Path: {Path}")
	print(f" Values other than /: {Path_other}\n")
	print(f"Minimum number of cookies: {min_number}")
	print(f"Maximum number of cookies: {max_number}")
	print(f"Average number of cookies: {round(avg_number,4)}")
	print(f"Median number of cookies: {median_number}")
		



		



