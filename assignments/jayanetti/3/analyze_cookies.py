#!/usr/bin/env python3

"""
1. CURL urls and save the output to a file
Ex: curl -ILsk cdc.gov > cdc.gov.txt

2. Status code
curl -s -o /dev/null -IL -w "%{http_code}" cdc.gov

3. Iterate through each file and grep for "Set-Cookie:" header.
	- how many set cookies headers?
	- for each set cookie,
		- HttpOnly, Secure, SameSite (and the corresponding policy), Path (and the corresponding value)

4. Analysis
How many cookies set HttpOnly?
How many cookies set Secure?
How many cookies set SameSite? For those that set SameSite, how many are Strict? How many are Lax? How many are None?
How many cookies set a Path? How many of those are values other than "/"?
Summarizing the entire table, what are the Min/Max/Mean/Median number of cookies for the 100 sites?
"""

import os
import json

def collect_data(url,file):
		#To collect the headers for each URL
		cmd = f"curl -ILsk {url}"
		stream = os.popen(cmd)
		output = stream.read()
		#print(output)
		with open(file, "w") as g:
			g.write(output)


def grep(url,file):
	#To look for the set-cookie header  
	cmd = f"grep 'set-cookie:' {file}"
	stream = os.popen(cmd)
	cookies = stream.readlines()
	#print(cookies)
	n_cookies = len(cookies)
	#print(n_cookies)
	i = 0
	cookie_dic = {}
	if n_cookies >= 0:
		#print(n_cookies)
		for cookie in cookies:		
			#print(cookie)
			dic = get_cookie_parameters(cookie)
			cookie_dic[i] = dic
			i = i + 1
	return n_cookies, cookie_dic

def get_cookie_parameters(cookie):
	#To create a dictionary with parameters in the set-cookie
	cookie_value = cookie.split("set-cookie:")[1]
	#print(value)
	key_value_list = cookie_value.split(";")
	#print(key_value_list)
	cookie_dic = {}
	for each in key_value_list:
		#print(each)
		try:
			key,value = each.split("=",1)
			key = key.strip(" ")		
		except:
			key = each.split("=",1)[0]
			key = key.strip(" ")		
			value = "y"
		para = ["httponly","secure","samesite","path"]
		key = key.strip(" \n") #FIXXXXXXXXXXX
		#print(key)
		if key.lower() in para:
			cookie_dic[key] = value
	#	print(cookie_dic)
	return cookie_dic

def get_status_code(url):	
	str = '%{http_code}'	
	cmd = ("curl -s -o /dev/null -IL -w %s %s" % (str,url))
	stream = os.popen(cmd)
	sc = stream.read()
	return sc


if __name__ == '__main__':
	with open("HJAYA002@ODU.EDU", "r") as f:
		urls = f.readlines()
	urls.pop(0) 
	main = {}
	sc = None
	n_cookies = None
	cookie_dic = None
	for url in urls:
		data = {}
		url = url.strip("\n")
		print(url)
		file = f"curl_output/{url}.txt"
		#collect_data(url,file)			
		sc = get_status_code(url)
		if sc == 0:
			sc = "Coul"	
		n_cookies, cookie_dic = grep(url,file)
		data["status-code"] = sc
		data["number-of-cookies"] = n_cookies	
		data["cookie-parameters"] = cookie_dic
		main[url] = data
	#print(main)
	json_object = json.dumps(main, indent = 2)   
	#print(json_object) 
	with open ("out.json", "w") as h:
		h.write(json_object)
		



