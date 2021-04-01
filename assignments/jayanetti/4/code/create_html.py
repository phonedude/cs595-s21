#!/usr/bin/env python3

import os

# def grep_url(url,file):
# 	#To look for the set-cookie header  
# 	cmd = f"grep 'Location:' {file}"
# 	stream = os.popen(cmd)
# 	loc = stream.readlines()
# 	n_loc = len(loc)
# 	locations = []
# 	loc_list = []
# 	if n_loc == 0:
# 		#print("no X-Frame-Options header")
# 		locations = [None]
# 	else:
# 		for item in loc:
# 			#print(item)
# 			x, location = item.split(": ")
# 			location = location.strip("\n")
# 			loc_list.append(location)
# 		[locations.append(x) for x in loc_list if x not in locations] 
# 	print(locations)
# 	if n_loc == 1:
# 		return locations[0]
# 	else:
# 		return locations

def grep_frame(url,file):
	#To look for the 'X-Frame-Options:' header  
	cmd = f"grep 'X-Frame-Options:\|x-frame-options:' {file}"
	stream = os.popen(cmd)
	x_frame_options = stream.readlines()
	n_options = len(x_frame_options)
	#print(n_options)
	frame_options = []
	frame_list = []
	if n_options == 0:
		#print("no X-Frame-Options header")
		frame_options = [None]
	else:
		for item in x_frame_options:
			#print(item)
			x, frame = item.split(": ")
			frame = frame.strip("\n")
			#print(frame)
			frame_list.append(frame)
		[frame_options.append(x) for x in frame_list if x not in frame_options] 
	n = len(frame_options)
	#print(n)
	return frame_options
	# if n == 1:
	# 	return frame_options[0]
	# else:
	# 	return frame_options
	# #print(n_cookies)
	# i = 0
	# cookie_dic = {}
	# if n_cookies >= 0:
	# 	#print(n_cookies)
	# 	for cookie in cookies:		
	# 		#print(cookie)
	# 		dic = get_cookie_parameters(cookie)
	# 		cookie_dic[i] = dic
	# 		i = i + 1
	# return n_cookies, cookie_dic

if __name__ == '__main__':
	with open("HJAYA002@ODU.EDU", "r") as f:
		urls = f.readlines()
	urls.pop(0) 
	print("Reading URLs from HJAYA002@ODU.EDU")
	with open("main_template.html", "r") as g:
		template = g.read()
	#print(template)
	print("Checking the X-Frame-Options header")
	with open("header_summary.csv", "w") as i:
		for url in urls:
			url = url.strip("\n")
			file = f"curl_output/{url}.txt"		
			frame_options = grep_frame(url,file)
			i.write(f"{url},{frame_options}\n")
			#new_url = grep_url(url,file)
			#print(url, frame_options)
	# print("Creatng the HTML framing each URL")		
	# for url in urls:
	# 	url = url.strip("\n")	
	# 	filename = f"html_files/{url}.html"
	# 	html = template.replace("URL_GOES_HERE", url)
	# 	with open(filename, "w") as h:
	# 		h.write(html)
	print("Done.")