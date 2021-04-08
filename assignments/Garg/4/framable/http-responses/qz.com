HTTP/1.1 301 Found
Server: Varnish
Retry-After: 0
Location: https://qz.com/
Content-Length: 0
Accept-Ranges: bytes
Date: Thu, 01 Apr 2021 16:20:42 GMT
Via: 1.1 varnish
Connection: close
Strict-Transport-Security: max-age=31536000
X-Served-By: cache-wdc5571-WDC
X-Cache: HIT
X-Cache-Hits: 0

HTTP/2 200 
content-type: text/html; charset=utf-8
x-powered-by: Express
content-security-policy: frame-ancestors 'self' https://cms.qz.com; upgrade-insecure-requests
x-frame-options: SAMEORIGIN
etag: W/"28fd9-44tdgOjYuyK8e0yH1U+fJOiTDxc"
via: 1.1 varnish, 1.1 varnish
date: Thu, 01 Apr 2021 16:20:43 GMT
age: 40
strict-transport-security: max-age=31536000
x-qz-test-group: 0
x-served-by: cache-dca17765-DCA, cache-wdc5523-WDC
x-cache: HIT, MISS
x-cache-hits: 1, 0
x-timer: S1617294043.055585,VS0,VE5
vary: X-QZ-User-Role, Accept-Encoding

