### ODU CS 495/595 Web Security, Spring 2021.
Instructor: [Michael L. Nelson](http://www.cs.odu.edu/~mln/) <mln@cs.odu.edu>

Office Hours: Thursdays 3-4 and by appointment

Time: Thursdays 4:20pm - 7:00pm

Place: online -- contact mln@cs.odu.edu for the Zoom URL.

[Syllabus](https://raw.githubusercontent.com/phonedude/cs595-s21/master/syllabus.txt)

Class Email list: [https://groups.google.com/group/cs595-s21](https://groups.google.com/group/cs595-s21)

### Course Objectives

The goal of this course is to review common web security vulnerabilities
and exploits, as well as their corresponding defenses.  There is
an inherent tension between "web as simple document reader" and
"web as application environment", and as the functionality of the
web ecosystem increases, so do the vulnerabilities.

General concepts that students will learn: principles of web security,
attacks and countermeasures, the browser security model, web app
vulnerabilities, injection, denial-of-service, TLS attacks, privacy,
fingerprinting, same-origin policy, cross site scripting, authentication,
JavaScript security, emerging threats, defense-in-depth, techniques
for writing secure code, web archiving, rehosting.

Specific technologies that students will learn: Git/GitHub,
DOM/Javascript, CLI, Node.js, Twitter, Youtube.

### Course Inspiration

This course is based on [CS 253 Web Security, Stanford, Fall
2019](https://web.stanford.edu/class/cs253/).  Special thanks to
[Feross Aboukhadijeh](https://feross.org/) for generously sharing
his course materials (although any errors are mine).

### Class Schedule (subject to change)

* Week 01 - January 21 - Introduction and Administrivia, Document Object Model, Javascript, HTTP, Security fundamentals
   * Git/GitHub [1](https://guides.github.com/introduction/git-handbook/), [2](https://www.youtube.com/watch?v=0fKg7e37bQE#t=4m20s), [3](https://www.cs.odu.edu/~tkennedy/cs411/s20/Public/gitIntro/index.html)
   * Markdown [1](https://guides.github.com/features/mastering-markdown/), [2](https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf)
   * [Node.js](https://nodejs.org/)
   * Document Object Model: [Introduction to the DOM](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction), [Easy Way to Understand How the DOM Works](https://www.youtube.com/watch?v=2Tld4yyN_tw)
   * [JavaScript Crash Course, JavaScript DOM Crash Course Parts 1--4](https://www.youtube.com/playlist?list=PLillGF-RfqbbnEGy3ROiLWk7JMCuSyQtX)
   * [A Re-Introduction to JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript/A_re-introduction_to_JavaScript)
   * [The Missing Semester of Your CS Education](https://missing.csail.mit.edu/)
   * Inside look at modern web browser: [1](https://developers.google.com/web/updates/2018/09/inside-browser-part1), [2](https://developers.google.com/web/updates/2018/09/inside-browser-part2), [3](https://developers.google.com/web/updates/2018/09/inside-browser-part3)
   * [Architecture of the World Wide Web, Volume One](https://www.w3.org/TR/webarch/)
   * [Class slides](https://docs.google.com/presentation/d/1EZomYYzDeLNzCOlTsFUWgVHUhuiCGgXPY8G3r-i_Yic/edit#slide=id.gae7496bce2_2_75)

* Week 02 - January 28 - Cookies, Sessions
   * [An overview of HTTP](https://developer.mozilla.org/en-US/docs/Web/HTTP/Overview)
   * [HTTP Cookies](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies)
   * [HTTP Headers](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers)
   * [Class slides](https://docs.google.com/presentation/d/1SB1s-CifbG8KxKzgyDSRmxElC0BsjWbAZdpUqI4vrKY/edit)

* Week 03 - February 4 - Cross-Site Request Forgery, Same Origin Policy
   * [SameSite Cookies Explained](https://web.dev/samesite-cookies-explained/)
   * [Incrementally Better Cookies](https://tools.ietf.org/html/draft-west-cookie-incrementalism-01#section-4.1)
   * [CSRF Is Dead](https://scotthelme.co.uk/csrf-is-dead/)
   * [Same Origin policy](https://developer.mozilla.org/en-US/docs/Web/Security/Same-origin_policy)
   * [Cross-Site Request Forgery Prevention](https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html)
   * [Origin](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin)
   * [Class slides](https://docs.google.com/presentation/d/1aUZDYCNzQGRPT7DKpbQ6u-9hS7csb6uXWqmBtwE9t40/edit)

* Week 04 - February 11 - Exceptions to the Same Origin Policy
   * [X-Frame-Options](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options), [RFC 7034](https://tools.ietf.org/html/rfc7034)
   * [Frame Hijacking](https://seclab.stanford.edu/websec/frames/)
   * [Busting Frame Busting](https://seclab.stanford.edu/websec/framebusting/)
   * [Class slides](https://docs.google.com/presentation/d/1NFyC1huil5uOic4ITtEUlogUqAfP8PQIpNGChtUJE7Y/edit)

* Week 05 - February 18 - Cross-Site Scripting (XSS)
   * [Cross Site Scripting Prevention Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html)
   * [XSS Filter Evasion Cheat Sheet](https://owasp.org/www-community/xss-filter-evasion-cheatsheet)
   * [Class slides](https://docs.google.com/presentation/d/12Z1WZZMLmlaJ4Uypq-Ck7POyq6EE2-VZAgvoWOmM6oI/edit)

* Week 06 - February 25 - XSS and Content Security Policy (CSP)
   * [Content Security Policy (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) 
   * [Class slides](https://docs.google.com/presentation/d/1amxk2d59TCL0ya3ZffxS9qe3J8pn_TOStDL70kbyoas/edit)

* Week 07 - March 4 - Fingerprinting and Privacy


* Week 08 - March 11 - UI Denial-of-service, Phishing, Side Channels


* Week 09 - March 18 - Code Injection


* Week 10 - March 25 - Transport Layer Security


* Week 11 - April 1 - Authentication


* Week 12 - April 8 - Server security, Safe coding practices


* Week 13 - April 15 - DNS rebinding attacks


* Week 14 - April 22 - Browser architecture


* Week 15 - April 29 - Web Archiving 


* Week 16 - May 6 - Exam 

### Assignments (subject to change)

* Weekly review of current events: [#cs595s21](https://twitter.com/search?q=%23cs595s21&src=typed_query&f=live)

* Assignment 1: Getting Started
   * [Due: February 4](/assignments/assignment-1.md)

* Assignment 2: Basics of HTML, Javascript, and Node
   * [Due: February 18](/assignments/assignment-2.md)

* Assignment 3: Cookie Report
   * [Due: March 4](/assignments/assignment-3.md)

* Assignment 4: Frames
   * [Due: March 18]((/assignments/assignment-4.md)

* Assignment 5: TBD
   * Due: April 1

* Assignment 6: TBD
   * Due: April 15

* Assignment 7: TBD
   * Due: May 7
