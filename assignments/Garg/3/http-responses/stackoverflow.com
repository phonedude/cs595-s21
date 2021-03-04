HTTP/1.1 301 Moved Permanently
cache-control: no-cache, no-store, must-revalidate
location: https://stackoverflow.com/
server: Microsoft-IIS/10.0
x-flags: AA
x-aspnet-duration-ms: 0
x-request-guid: 99201eac-0c06-415f-8588-dad112d763e2
x-is-crawler: 1
x-providence-cookie: 5a30e741-0cd9-be34-82f8-361c9445c691
feature-policy: microphone 'none'; speaker 'none'
content-security-policy: upgrade-insecure-requests; frame-ancestors 'self' https://stackexchange.com
Accept-Ranges: bytes
Date: Mon, 22 Feb 2021 03:56:47 GMT
Via: 1.1 varnish
Connection: keep-alive
X-Served-By: cache-wdc5541-WDC
X-Cache: MISS
X-Cache-Hits: 0
X-Timer: S1613966207.050376,VS0,VE13
Vary: Fastly-SSL
X-DNS-Prefetch-Control: off
Set-Cookie: prov=5a30e741-0cd9-be34-82f8-361c9445c691; domain=.stackoverflow.com; expires=Fri, 01-Jan-2055 00:00:00 GMT; path=/; HttpOnly

HTTP/2 200 
cache-control: private
content-type: text/html; charset=utf-8
server: Microsoft-IIS/10.0
strict-transport-security: max-age=15552000
x-route-name: Home/Index
x-frame-options: SAMEORIGIN
x-flags: AA
x-aspnet-duration-ms: 3
x-request-guid: 29d66223-4820-4633-8922-4c76923ef0ac
x-is-crawler: 1
x-providence-cookie: 749b21aa-c2a2-1762-277b-ab88acdf5d4f
feature-policy: microphone 'none'; speaker 'none'
content-security-policy: upgrade-insecure-requests; frame-ancestors 'self' https://stackexchange.com
x-page-view: 1
accept-ranges: bytes
date: Mon, 22 Feb 2021 03:56:47 GMT
via: 1.1 varnish
x-served-by: cache-wdc5546-WDC
x-cache: MISS
x-cache-hits: 0
x-timer: S1613966207.166741,VS0,VE10
vary: Fastly-SSL
x-dns-prefetch-control: off
set-cookie: prov=749b21aa-c2a2-1762-277b-ab88acdf5d4f; domain=.stackoverflow.com; expires=Fri, 01-Jan-2055 00:00:00 GMT; path=/; HttpOnly

