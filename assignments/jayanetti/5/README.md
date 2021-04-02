# Assignment 5: Same-origin Policy, CORS, CSP
#### Himarsha Jayanetti, CS 495/595 Web Security, Spring 2021

## List of directories

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
No 'Access-Control-Allow-Origin' in the response headers.

<img src="screenshots/1.2.png" width="700">

Console will show the issue.

<img src="screenshots/1.1.png" width="700">

* Later I am allowing the CORS headers in server 2 which will allow the JSON response to be shared with server 1. In order to achieve this, I am using the cors node package.

```
var cors = require('cors')
app.use(cors())
``` 

'Access-Control-Allow-Origin' header is set to '*' 

<img src="screenshots/1.3.png" width="700">

Console will display the JSON as well.

<img src="screenshots/1.4.png" width="700">

### Youtube Video: https://youtu.be/atudQaQC9Q8
   
## Q2: CORS: Blocking and reading HTTP response headers from another origin

### Youtube Video: 
   
## Q2: CORS: Content-Security-Policy: embedding from another site

### Youtube Video: 

## References

1. https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Origin
2. https://expressjs.com/en/resources/middleware/cors.html


