## Assignment 4, CS 495/595 Web Security, Spring 2021

Due: 2021-03-18

Points available: 15

### Which public sites are framable? (10 points)

* Using the 100 sites assigned to you in Assignment 3, write HTML pages served by your node.js server (running on localhost) that attempts to render these pages in an iframe.  How many / which ones are framable?  How many / which ones are not framable?  If not, explain how they defeated your attempt to frame them.  

* Place the 100 HTML files in the directory ```Nelson/4/framable```, where "Nelson" is replaced by your last name.

### Frame attack (5 points)

* Using two servers running on localhost, demonstrate a set of pages where a page on one server can steal the cookies of an iframed page on the other server.

* Create new page(s) where the page in the iframe can protect its cookies from being stolen.

* All code, files, etc. necessary for demonstrating this portion of the assignment will be in ```Nelson/4/frame-attack", where "Nelson" is replaced by your last name.


### Extra credit (up to 10 points, 1 per site)

* Of the 100 sites that allow themselves to be framed, one point extra credit is available for each site where you can document and demonstrate attacks where you can do at least one of:
  * Defeat their attempts to "unframe" themselves.
  * Steal cookies set by the site you are framing.  

### Setting up directory "4"

All of the code, scripts, files, HTTP responses, images, etc. you created to do this assignment will be uploaded into directory "4".  When in doubt, ask me on the class email list or just upload it.  You absolutely must include the HTTP responses as part of your submission.  But all of the data that I will read to grade your assignment will be contained in README.md; I will not open separate .pdf, .ppt, etc. files.  The purpose of this is to encourage you to develop good markdown skills for natively documenting your work in GitHub.  

Your "4" directory will have two sub-directories: "framable" and "frame-attack", as well a README.md file.  The README.md file will have all the necessary summary information as well as images to support your findings.  

Your README.md file will also point to two Youtube videos, one for "framable" and one for "frame-attack".  

