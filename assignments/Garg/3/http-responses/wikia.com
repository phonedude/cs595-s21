HTTP/1.1 301 Moved Permanently
Content-Type: text/html; charset=utf-8
Last-Modified: Mon, 22 Feb 2021 03:41:34 GMT
Location: https://www.wikia.com/Wikia
X-Content-Type-Options: nosniff
X-Redirected-By: AnonsHTTPSUpgrade NotPrimary Title-Redirect mw-OutputPage::redirect
X-Datacenter: SJC
X-Cacheable: YES
Content-Length: 0
Accept-Ranges: bytes
Date: Mon, 22 Feb 2021 03:57:12 GMT
Age: 938
Connection: keep-alive
X-Served-By: mediawiki-prod-ucp-749c8bf744-4b2qw, cache-wk-sjc11421-SJC, cache-wdc5535-WDC
X-Cache: HIT, HIT
X-Cache-Hits: 18, 1
X-Timer: S1613966233.740114,VS0,VE1
Vary: Accept-Encoding, Cookie
Cache-Control: private, s-maxage=0, max-age=0, must-revalidate

HTTP/2 301 
server: Varnish
retry-after: 0
location: https://www.fandom.com/explore
accept-ranges: bytes
date: Mon, 22 Feb 2021 03:57:12 GMT
x-served-by: cache-wdc5574-WDC
x-cache: HIT
x-cache-hits: 0
x-timer: S1613966233.853018,VS0,VE0
vary: Accept-Encoding
content-length: 0

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
date: Mon, 22 Feb 2021 03:57:12 GMT
age: 15
x-served-by: cache-wk-sjc11421-SJC, cache-wdc5566-WDC
x-cache: MISS, HIT
x-cache-hits: 0, 1
x-timer: S1613966233.993558,VS0,VE1
vary: Fastly-SSL, Fastly-SSL, Accept-Language,Geo-Region,Accept-Encoding
set-cookie: wikia_beacon_id=BvMgpDeUKQ; domain=.fandom.com; path=/; expires=Sat, 21 Aug 2021 03:57:12 GMT; SameSite=None; Secure;
set-cookie: wikia_session_id=HDmW_KlAWE; domain=.fandom.com; path=/; expires=Mon, 22 Feb 2021 04:27:12 GMT; SameSite=None; Secure;
set-cookie: Geo={%22region%22:%22VA%22%2C%22country%22:%22US%22%2C%22continent%22:%22NA%22}; path=/; domain=.fandom.com; SameSite=None; Secure;
content-length: 703705

