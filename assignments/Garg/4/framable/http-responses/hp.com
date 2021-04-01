HTTP/1.1 301 Moved Permanently
Server: Apache
X-Frame-Options: SAMEORIGIN
Location: http://www.hp.com/
Cache-Control: max-age=7200
Expires: Thu, 01 Apr 2021 17:42:23 GMT
Vary: Accept-Encoding
Content-Type: text/html; charset=iso-8859-1
Date: Thu, 01 Apr 2021 16:19:21 GMT
X-Varnish: 608205847 608170852
Age: 2218
Via: 1.1 varnish
Connection: keep-alive
X-Varnish-Origin: g4t5233.houston.hp.com
X-Cache: HIT

HTTP/1.1 301 Moved Permanently
Server: Apache
Cache-Control: no-store, no-cache, must-revalidate, max-age=0, max-age=7200
Location: http://www-redirect.ext.hp.com
Expires: Thu, 01 Apr 2021 18:19:21 GMT
Content-Type: text/html; charset=iso-8859-1
X-Varnish: 1636934721
X-Varnish-Origin: g1t4192.austin.hp.com
Date: Thu, 01 Apr 2021 16:19:21 GMT
Connection: keep-alive
Akamai-GRN: 0.a812e8ac.1617293961.93f566b

HTTP/1.1 301 Moved Permanently
Server: AkamaiGHost
Content-Length: 0
Location: https://www8.hp.com/us/en/home.html
Cache-Control: max-age=0
Expires: Thu, 01 Apr 2021 16:19:21 GMT
Date: Thu, 01 Apr 2021 16:19:21 GMT
Connection: keep-alive

HTTP/2 200 
server: Apache
content-security-policy: upgrade-insecure-requests
last-modified: Thu, 01 Apr 2021 16:08:44 GMT
access-control-allow-headers: Access-Control-Allow-Origin, Origin, X-Requested-With, Content-Type, Accept
access-control-allow-methods: GET, OPTIONS, POST, PUT, DELETE
access-control-allow-origin: *
access-control-max-age: 3600
x-frame-options: SAMEORIGIN
content-type: text/html; charset=UTF-8
cache-control: max-age=2911
expires: Thu, 01 Apr 2021 17:07:52 GMT
date: Thu, 01 Apr 2021 16:19:21 GMT

