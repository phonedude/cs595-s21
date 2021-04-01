HTTP/1.1 301 Moved Permanently
cache-control: no-cache, no-store, must-revalidate
location: https://stackoverflow.com/
server: Microsoft-IIS/10.0
x-flags: AA
x-aspnet-duration-ms: 0
x-request-guid: 7b39906b-b277-4856-8750-007f97c414f5
x-is-crawler: 1
x-providence-cookie: b5ac9440-8799-cdf7-7822-874387301d52
feature-policy: microphone 'none'; speaker 'none'
content-security-policy: upgrade-insecure-requests; frame-ancestors 'self' https://stackexchange.com
Accept-Ranges: bytes
Date: Thu, 01 Apr 2021 16:20:53 GMT
Via: 1.1 varnish
Connection: keep-alive
X-Served-By: cache-wdc5579-WDC
X-Cache: MISS
X-Cache-Hits: 0
X-Timer: S1617294053.436585,VS0,VE7
Vary: Fastly-SSL
X-DNS-Prefetch-Control: off
Set-Cookie: prov=b5ac9440-8799-cdf7-7822-874387301d52; domain=.stackoverflow.com; expires=Fri, 01-Jan-2055 00:00:00 GMT; path=/; HttpOnly

HTTP/2 200 
cache-control: private
content-type: text/html; charset=utf-8
server: Microsoft-IIS/10.0
strict-transport-security: max-age=15552000
x-route-name: Home/Index
x-frame-options: SAMEORIGIN
x-flags: AA
x-aspnet-duration-ms: 3
x-request-guid: 9ffce538-b7cd-4123-bdee-e956cb3e68f9
x-is-crawler: 1
x-providence-cookie: 96f8541c-4669-0ce7-6b17-75a84f5c5c0b
feature-policy: microphone 'none'; speaker 'none'
content-security-policy: upgrade-insecure-requests; frame-ancestors 'self' https://stackexchange.com
x-page-view: 1
accept-ranges: bytes
date: Thu, 01 Apr 2021 16:20:53 GMT
via: 1.1 varnish
x-served-by: cache-wdc5539-WDC
x-cache: MISS
x-cache-hits: 0
x-timer: S1617294054.549314,VS0,VE11
vary: Fastly-SSL
x-dns-prefetch-control: off
set-cookie: prov=96f8541c-4669-0ce7-6b17-75a84f5c5c0b; domain=.stackoverflow.com; expires=Fri, 01-Jan-2055 00:00:00 GMT; path=/; HttpOnly

