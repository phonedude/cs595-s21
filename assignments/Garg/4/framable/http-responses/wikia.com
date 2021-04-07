HTTP/1.1 301 Moved Permanently
Server: Varnish
Retry-After: 0
Content-Length: 0
Location: https://www.fandom.com/explore
Accept-Ranges: bytes
Date: Thu, 01 Apr 2021 16:21:12 GMT
Connection: close
X-Served-By: cache-wdc5555-WDC
X-Cache: HIT
X-Cache-Hits: 0
X-Timer: S1617294073.604418,VS0,VE0
Vary: Accept-Encoding

HTTP/2 200 
cache-control: max-age=60, stale-while-revalidate=86400, stale-if-error=86400
content-security-policy: upgrade-insecure-requests
content-security-policy-report-only: default-src https: 'self' data: blob:; script-src https: 'self' data: 'unsafe-inline' 'unsafe-eval' blob:; style-src https: 'self' 'unsafe-inline' blob:; report-uri https://services.fandom.com/csp-logger/csp/upstream
content-type: text/html; charset=UTF-8
link: <https://www.fandom.com/wp-json/>; rel="https://api.w.org/"
link: <https://www.fandom.com/?p=3211>; rel=shortlink
x-datacenter: SJC
via: 1.1 varnish, 1.1 varnish
accept-ranges: bytes
date: Thu, 01 Apr 2021 16:21:12 GMT
age: 452
x-served-by: cache-wk-sjc11420-SJC, cache-wdc5532-WDC
x-cache: MISS, HIT
x-cache-hits: 0, 1
x-timer: S1617294073.794425,VS0,VE1
vary: Fastly-SSL, Fastly-SSL, Accept-Language,Geo-Region,Accept-Encoding
set-cookie: wikia_beacon_id=CJFMH57LUR; domain=.fandom.com; path=/; expires=Tue, 28 Sep 2021 16:21:12 GMT; SameSite=None; Secure;
set-cookie: wikia_session_id=xUaY-GCzvS; domain=.fandom.com; path=/; expires=Thu, 01 Apr 2021 16:51:12 GMT; SameSite=None; Secure;
set-cookie: Geo={%22region%22:%22VA%22%2C%22country%22:%22US%22%2C%22continent%22:%22NA%22}; path=/; domain=.fandom.com; SameSite=None; Secure;
content-length: 703962

