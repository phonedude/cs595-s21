## Assignment 7, CS 495/595 Web Security, Spring 2021

Due: 2021-05-06

Points available: 15

For this assignment, you will construct a phishing site that collects login information.

Relevant resources:

* [Complete Guide to Creating and Hosting a Phishing Page for Beginners](https://null-byte.wonderhowto.com/forum/complete-guide-creating-and-hosting-phishing-page-for-beginners-0187744/) -- note that this site's example code is in PHP, but you will do this in node.js.


### Create a simple phishing site (15 points)

Using one of your 100 web sites that offers logging in from the
previous assignments, modify the HTML and serve it from your own
node server on your machine to create a convincing phishing site.
You'll have to make sure all the images, Javascript, CSS, etc. are
all loaded from your local resources.  When the login button is
pushed, send the login information to your local node server and
record it in a log file.  Document and demonstrate the operation
of your phishing site with text, screen shots, and a Youtube video.

### Extra credit (12 points)

Using Zphisher ([blog
post](https://www.securitynewspaper.com/2020/03/25/create-phishing-page-of-29-websites-in-minutes/),
[GitHub](https://github.com/htr-tech/zphisher), create and demonstrate
(screen shots, Youtube video) three phishing sites.

### Setting up directory "7"

All of the code, files, images, etc. necessary to complete this
assignment will be in directory ```7```.  The README.md for this
assignment will have links to the code, a short discussion of any
issues you encountered making the site "display" correctly from
your server, screen shots of the site rendered in your browser, and
the log file of harvested user names and passwords, and a Youtube
video of your site in operation.

