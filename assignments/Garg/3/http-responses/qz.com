HTTP/1.1 301 Found
Server: Varnish
Retry-After: 0
Location: https://qz.com/
Content-Length: 0
Accept-Ranges: bytes
Date: Mon, 22 Feb 2021 03:56:38 GMT
Via: 1.1 varnish
Connection: close
Strict-Transport-Security: max-age=31536000
X-Served-By: cache-wdc5534-WDC
X-Cache: HIT
X-Cache-Hits: 0

HTTP/2 200 
content-type: text/html; charset=utf-8
x-powered-by: Express
content-security-policy: frame-ancestors 'self' https://cms.qz.com; upgrade-insecure-requests
x-frame-options: SAMEORIGIN
etag: W/"22186-nPvVXzjY9zdqDefTQM5SiuayA2o"
via: 1.1 varnish, 1.1 varnish
date: Mon, 22 Feb 2021 03:56:38 GMT
age: 46
strict-transport-security: max-age=31536000
x-qz-test-group: 0
x-served-by: cache-dca12921-DCA, cache-wdc5576-WDC
x-cache: HIT, MISS
x-cache-hits: 1, 0
x-timer: S1613966198.400705,VS0,VE4
vary: X-QZ-User-Role, Accept-Encoding

