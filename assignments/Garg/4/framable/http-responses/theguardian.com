HTTP/1.1 301 
Server: Varnish
Retry-After: 0
Content-Length: 0
Location: https://theguardian.com/
Accept-Ranges: bytes
Date: Thu, 01 Apr 2021 16:20:54 GMT
Via: 1.1 varnish
Connection: close
X-Served-By: cache-wdc5553-WDC
X-Cache: HIT
X-Cache-Hits: 0
X-Timer: S1617294055.973609,VS0,VE0

HTTP/2 301 
server: Varnish
retry-after: 0
location: https://www.theguardian.com/
accept-ranges: bytes
date: Thu, 01 Apr 2021 16:20:55 GMT
via: 1.1 varnish
x-served-by: cache-wdc5541-WDC
x-cache: HIT
x-cache-hits: 0
x-timer: S1617294055.051462,VS0,VE0
strict-transport-security: max-age=31536000
content-length: 0

HTTP/2 302 
retry-after: 0
location: /us
accept-ranges: bytes
date: Thu, 01 Apr 2021 16:20:55 GMT
set-cookie: GU_mvt_id=767857; expires=Wed, 30 Jun 2021 16:20:55 GMT; path=/; domain=.theguardian.com; Secure
x-timer: S1617294055.165801,VS0,VE0
strict-transport-security: max-age=31536000; includeSubDomains; preload
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
x-content-type-options: nosniff
content-security-policy: default-src https:; script-src https: 'unsafe-inline' 'unsafe-eval' blob: 'unsafe-inline'; frame-src https: data:; style-src https: 'unsafe-inline'; img-src https: data: blob:; media-src https: data: blob:; font-src https: data:; connect-src https: wss:; child-src https: blob:; object-src 'none'; base-uri 'none'
referrer-policy: no-referrer-when-downgrade
feature-policy: camera 'none'; microphone 'none'; midi 'none'; geolocation 'none'
permissions-policy: camera=(), microphone=(), midi=(), geolocation=(), interest-cohort=()
x-gu-edition: us
cache-control: max-age=0, no-transform
set-cookie: GU_geo_continent=NA; path=/; Secure
content-length: 0

HTTP/2 200 
content-type: text/html; charset=utf-8
etag: W/"hash6315817863306341817"
link: <https://assets.guim.co.uk/stylesheets/6aa12422955e17120cdbf73cc8c03e9b/facia.garnett.css>; rel=preload; as=style; nopush,<https://assets.guim.co.uk/polyfill.io/v3/polyfill.min.js?rum=0&features=es6,es7,es2017,default-3.6,HTMLPictureElement,IntersectionObserver,IntersectionObserverEntry,fetch&flags=gated&callback=guardianPolyfilled&unknown=polyfill&clearCache=5>; rel=preload; as=script; nopush,<https://assets.guim.co.uk/javascripts/750cd8d856e5fa63a212/graun.standard.js>; rel=preload; as=script; nopush,<https://assets.guim.co.uk/javascripts/bea10173faa36b6de3ad/graun.commercial.js>; rel=preload; as=script; nopush
accept-ranges: bytes
date: Thu, 01 Apr 2021 16:20:55 GMT
age: 105
set-cookie: GU_mvt_id=510773; expires=Wed, 30 Jun 2021 16:20:55 GMT; path=/; domain=.theguardian.com; Secure
x-timer: S1617294055.187138,VS0,VE211
strict-transport-security: max-age=31536000; includeSubDomains; preload
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
x-content-type-options: nosniff
content-security-policy: default-src https:; script-src https: 'unsafe-inline' 'unsafe-eval' blob: 'unsafe-inline'; frame-src https: data:; style-src https: 'unsafe-inline'; img-src https: data: blob:; media-src https: data: blob:; font-src https: data:; connect-src https: wss:; child-src https: blob:; object-src 'none'; base-uri 'none'
referrer-policy: no-referrer-when-downgrade
feature-policy: camera 'none'; microphone 'none'; midi 'none'; geolocation 'none'
permissions-policy: camera=(), microphone=(), midi=(), geolocation=(), interest-cohort=()
x-gu-edition: us
cache-control: max-age=60, stale-while-revalidate=6, stale-if-error=864000, private, no-transform
vary: Accept-Encoding,User-Agent
set-cookie: GU_geo_continent=NA; path=/; Secure
content-length: 999726

