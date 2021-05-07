# CS 595 - Assignment 7

Assignment 7 for CS 595 - Web Security at Old Dominion University

<br />

## Create a Simple Phishing Login Page

### Technology Used

* node.js - 15.11.0
* expressJS
* html
* css

### Directories

* /html - Copy-cat login page for Netflix
* /css - CSS resources, both original and pulled down from Netflix
* /scripts - Javascript files pulled down from Netflix
* /images - Image and icon files that are used on the page
* /phished.json - Logins and request body information for users trying to login to my site
* /index.js - Node.JS server file

### Video

https://youtu.be/M76_z9Z-K4o

<br />

## Summary

For this assignment, I created a phishing login page for Netflix, as that was one of my URLs for this semester, and is such a commonly visited site, I thought it would be a good demonstration for the exercise.  

I pulled down the HTML from https://www.netflix.com/login and pulled down any javascript, images and stylesheets that were hosted by Netflix and stored them locally.  Netflix uses Bootstrap and also does a POST with the login form, so I was able to grab the request body and save that information to my JSON file.

This was just a simple demonstration to show how easy it could be to trick an unknowing person.
