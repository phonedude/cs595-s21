HTTP/1.1 301 Moved Permanently
Server: Varnish
Retry-After: 0
Content-Type: 
Content-Length: 0
Accept-Ranges: bytes
Date: Mon, 22 Feb 2021 03:39:00 GMT
Via: 1.1 varnish
Connection: close
X-Served-By: cache-wdc5554-WDC
X-Cache: MISS
X-Cache-Hits: 0
X-Timer: S1613965141.894014,VS0,VE0
Location: https://www.jimdo.com/

HTTP/2 200 
cache-control: public, max-age=60
content-security-policy: upgrade-insecure-requests; default-src 'self' 'unsafe-eval' 'unsafe-inline' data: https:; report-uri https://o378271.ingest.sentry.io/api/5201427/security/?sentry_key=b97b30d6fd6244419f1e761e6f6f319a
content-type: text/html; charset=UTF-8
etag: "602fe502-30d82"
last-modified: Fri, 19 Feb 2021 16:19:14 GMT
referrer-policy: no-referrer-when-downgrade
server: nginx/1.15.0
x-content-type-options: nosniff
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
via: 1.1 varnish, 1.1 varnish
accept-ranges: bytes
date: Mon, 22 Feb 2021 03:39:01 GMT
age: 212154
x-served-by: cache-lcy19244-LCY, cache-wdc5779-WDC
x-cache: HIT, MISS
x-cache-hits: 81, 0
vary: Accept-Encoding
strict-transport-security: max-age=31536000
content-length: 200066

