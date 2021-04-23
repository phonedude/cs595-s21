# CS 595 - Assignment 6

Assignment 6 for CS 595 - Web Security at Old Dominion University

<br />

## Fingerprint at least 5 different clients 

### Technology Used

* node.js - 15.11.0
* expressJS
* md5
* html

### Directories

* /html - HTML files to display to client 
* /fingerprints.json - Log/fingerprint tracking file used to read and write to when clients make a request to server
* /index.js - Node.JS server file

### Video

https://youtu.be/lcyrhkY0JHw

<br />

## Summary

For this assignment, I based my fingerprinting on the Accept header property, as well as User-Agent property, and did and MD5 hash on the values.   I used fingerprints.json as my log/fingerprint storage that I could retrieve and update.  This effectively replaces a full blown database for the purpose of the assignment.  The MD5 hash is used as the key to quickly check if the client has visited before.  
