HTTP/1.1 301 Moved Permanently
Server: Varnish
Retry-After: 0
Content-Type: 
Content-Length: 0
Accept-Ranges: bytes
Date: Thu, 01 Apr 2021 16:20:26 GMT
Via: 1.1 varnish
Connection: close
X-Served-By: cache-wdc5539-WDC
X-Cache: MISS
X-Cache-Hits: 0
X-Timer: S1617294026.110960,VS0,VE1
Location: https://www.jimdo.com/

HTTP/2 200 
cache-control: public, max-age=60
content-security-policy: upgrade-insecure-requests; default-src 'self' 'unsafe-eval' 'unsafe-inline' data: https: wss:; report-uri https://o378271.ingest.sentry.io/api/5201427/security/?sentry_key=b97b30d6fd6244419f1e761e6f6f319a
content-type: text/html; charset=UTF-8
etag: "6065c2e8-35c0c"
last-modified: Thu, 01 Apr 2021 12:56:08 GMT
referrer-policy: no-referrer-when-downgrade
server: nginx/1.15.0
x-content-type-options: nosniff
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
via: 1.1 varnish, 1.1 varnish
accept-ranges: bytes
date: Thu, 01 Apr 2021 16:20:26 GMT
age: 10999
x-served-by: cache-lcy19266-LCY, cache-wdc5769-WDC
x-cache: HIT, MISS
x-cache-hits: 3, 0
vary: Accept-Encoding
strict-transport-security: max-age=31536000
content-length: 220172

