#!/usr/bin/env python3

import os
import json
from datetime import date
from datetime import datetime, timedelta
import io
import csv
import re
import requests
from bs4 import BeautifulSoup
from csv import writer
from csv import reader
from selenium import webdriver
import selenium as se
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
import time
#from seleniumwire import webdriver


def method1(urls):	
	count = 1
	with open ("isframable.csv","w") as f:
		f.write(f"url,isframable,reason\n")
		for url in urls:	
			print(url)
			isframable = False
			reason = None
			options = Options()
			preferences = {"profile.default_content_setting_values.notifications" : 2}
			options.add_experimental_option("prefs", preferences)
			driver = webdriver.Chrome(options=options)
			try:	
				url = url.strip("\n")
				localhost_url = "http://localhost:4000/" + url + ".html"
				response = driver.get(localhost_url)
				#driver.implicitly_wait(30)
				#print(driver.page_source)
				# for entry in driver.get_log('browser'):
				# 	#print(entry["alert"])
				# 	#if "Refused to display" in entry["message"]:
				# 	print(entry)
				alerttext = driver.switch_to.alert
				outcome = alerttext.text	
				if outcome == "Iframe loaded":
					isframable = True
				if "Iframe not loaded" in outcome:
					isframable = False
					try:
						reason = outcome.strip("Iframe not loaded: ")
					except:
						pass
			except Exception as e:
				print(f"{count}. {localhost_url} failed with error: {e}")
				pass
			count += 1
			f.write(f"{url},{isframable},{reason}\n")
		driver.quit()	

# def method2(urls):
# 	count = 1
# 	for url in urls:
# 		const options = {
#   headers: {
#     Authorization: "Bearer 6Q************"
#   }
# };

# fetch(url, options)
#   .then( res => res.json() )
#   .then( data => console.log(data) );
# 		count += 1



if __name__ == "__main__":
	with open("HJAYA002@ODU.EDU", "r") as f:
		urls = f.readlines()
	urls.pop(0) 	
	#urls = ["test/not_framable","test/framable"]
	method1(urls)
	#method2(urls)

