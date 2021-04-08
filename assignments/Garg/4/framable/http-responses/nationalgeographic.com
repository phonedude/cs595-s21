HTTP/1.1 302 Moved Temporarily
Date: Thu, 01 Apr 2021 16:20:30 GMT
Content-Type: text/plain
Content-Length: 13
Connection: keep-alive
Location: https://www.nationalgeographic.com/
Access-Control-Allow-Origin: *

HTTP/2 200 
content-type: text/html; charset=utf-8
date: Thu, 01 Apr 2021 16:20:18 GMT
server: nginx/1.16.1
expires: Thu, 01 Apr 2021 16:20:53 GMT
last-modified: Thu, 01 Apr 2021 16:20:53 GMT
via: 1.1 varnish-v4, 1.1 15d56bef7b8d30c7328ed4685742279e.cloudfront.net (CloudFront)
cache-control: max-age=35
accept-ranges: bytes
set-cookie: region=ccpa; path=/; Expires=Thu, 08 Apr 2021 16:20:18 GMT;
set-cookie: _dcf=1; path=/; Expires=Thu, 08 Apr 2021 16:20:18 GMT;
vary: Accept-Encoding
x-cache: Hit from cloudfront
x-amz-cf-pop: IAD79-C3
x-amz-cf-id: Bw5_goRNIyT0WA32atzp70xIyYTg1PoYFO7tti_bJyaU1twxrsTq5A==
age: 12

