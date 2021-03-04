HTTP/1.1 301 Moved Permanently
Server: Apache
X-Frame-Options: SAMEORIGIN
Location: http://www.hp.com/
Cache-Control: max-age=7200
Expires: Mon, 22 Feb 2021 04:57:59 GMT
Vary: Accept-Encoding
Content-Type: text/html; charset=iso-8859-1
Date: Mon, 22 Feb 2021 03:37:51 GMT
X-Varnish: 2389513155 2389445141
Age: 2392
Via: 1.1 varnish
Connection: keep-alive
X-Varnish-Origin: g4t5234.houston.hp.com
X-Cache: HIT

HTTP/1.1 301 Moved Permanently
Server: Apache
X-Frame-Options: SAMEORIGIN
Cache-Control: no-store, no-cache, must-revalidate, max-age=0, max-age=7200
Location: http://www-redirect.ext.hp.com
Expires: Mon, 22 Feb 2021 05:37:52 GMT
Vary: Accept-Encoding
Content-Type: text/html; charset=iso-8859-1
Accept-Ranges: bytes
Date: Mon, 22 Feb 2021 03:37:52 GMT
X-Varnish: 895403265
Age: 0
Via: 1.1 varnish
Connection: keep-alive
X-Varnish-Origin: g2t3072
X-Cache: MISS

HTTP/1.1 301 Moved Permanently
Server: AkamaiGHost
Content-Length: 0
Location: https://www8.hp.com/us/en/home.html
Cache-Control: max-age=0
Expires: Mon, 22 Feb 2021 03:37:53 GMT
Date: Mon, 22 Feb 2021 03:37:53 GMT
Connection: keep-alive

HTTP/2 200 
server: Apache
content-security-policy: upgrade-insecure-requests
last-modified: Mon, 22 Feb 2021 03:20:35 GMT
access-control-allow-headers: Access-Control-Allow-Origin, Origin, X-Requested-With, Content-Type, Accept
access-control-allow-methods: GET, OPTIONS, POST, PUT, DELETE
access-control-allow-origin: *
access-control-max-age: 3600
x-frame-options: SAMEORIGIN
content-type: text/html; charset=UTF-8
cache-control: max-age=2662
expires: Mon, 22 Feb 2021 04:22:15 GMT
date: Mon, 22 Feb 2021 03:37:53 GMT

