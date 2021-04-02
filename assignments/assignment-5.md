## Assignment 5, CS 495/595 Web Security, Spring 2021

Due: 2021-04-01

Points available: 15

For this assignment, you will need to set up two different node servers, running simultaneously on two different ports.

Relevant resources:

* [Same-origin policy](https://developer.mozilla.org/en-US/docs/Web/Security/Same-origin_policy)
* [Cross-Origin Resource Sharing (CORS)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS)
* [Content Security Policy (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP)

### CORS: Blocking and reading responses from another origin (5 points)

* Create node.js, HTML, and json files in the directory ```5.1``` that demonstrate Javascript running in one HTML file requesting a .json response from another origin.  Show how the json response from one server is both blocked, and what is necessary to allow the response. 

* Keep your json response simple, but make it convey information about your three favorite things from assignment 1.

### CORS: Blocking and reading HTTP response headers from another origin (5 points)

* Create another directory ```5.2```; you can modify the files from ```5.1``` for this portion of the assignment if you'd like.

* Demonstrate how three custom HTTP response headers (```X-CS595s21-*```, where ```*``` corresponds to your three favorite things from assignment 1) are both blocked and then allowed by one server.  

### Content-Security-Policy: embedding from another site (5 points)

* Find a site from assignment 4 that allowed embedding.  In directory ```5.3```, include the necessary files to demonstrate your local HTML file being allowed to embed the remote site as well as your local server prohibiting the embedding.

### Extra credit (6 points)

* Repeat the excercises in ```5.1```, ```5.2```, ```5.3``` but with one set of files served from [GitHub Pages](https://pages.github.com/).   Store any new files in ```5.4```.

### Setting up directory "5"

All of the code, files, images, etc. necessary to complete this assignment will be in directory ```5```.  The README.md for this assignment will have links to the pages, a short description of what each file does, screenshots of requests being blocked and allowed, as well as links to Youtube videos demonstrating the reading and blocking.  

