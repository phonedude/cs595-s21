# Assignment 5: Same-origin Policy, CORS, CSP
#### Himarsha Jayanetti, CS 495/595 Web Security, Spring 2021

### List of directories

  * [Q1 files](5.1)
    * [Server 1: Hosting the HTML](5.1/server1.js)
    * [HTML file](5.1/files/1.html)
    * [Server 2: Hosting the JSON (Preventing access)](5.1/deny_server.js)
    * [Server 2: Hosting the JSON (Allowing access)](5.1/allow_server.js)
    * [JSON](5.1/files/myfav.json)
  * [Q2 files](5.2)
    * [Server 1: Hosting the HTML](5.2/server1.js)
    * [HTML file](5.2/files/1.html)
    * [Server 2: Sending HTML response along with custom headers](5.2/server2.js)
  * [Q3 files](5.3)
    * [Server 1: Allowed embedding](5.3/allow_server.js)
    * [Server 2: Prohibiting embedding](5.3/deny_server.js)
    * [HTML file](5.3/files/my.html)
   
## Q1: CORS: Blocking and reading responses from another origin

* In first instance, the javascript in HTML hosted on server 1 is unable to fetch the JSON hosted on server 2. This is because the CORS headers are not defined.
  Below response header should be set.
```
'Access-Control-Allow-Origin': * 
``` 
No Access-Control-Allow-Origin in the response headers.
<img src="screenshots/1.1.png" width="700">

Console will show the issue.
```
Access to fetch at 'http://localhost:5002/myfav.json' from origin 'http://localhost:5001' has been blocked by CORS policy: No 'Access-Control-Allow-Origin' header is present on the requested resource. If an opaque response serves your needs, set the request's mode to 'no-cors' to fetch the resource with CORS disabled.
```
<img src="screenshots/1.2.png" width="700">


<img src="screenshots/1.3.png" width="700">
<img src="screenshots/1.4.png" width="700">

### Youtube Video: 
   
## Q2: CORS: Blocking and reading HTTP response headers from another origin

### Youtube Video: 
   
## Q2: CORS: Content-Security-Policy: embedding from another site

### Youtube Video: 


