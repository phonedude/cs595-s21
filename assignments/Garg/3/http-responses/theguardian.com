HTTP/1.1 301 
Server: Varnish
Retry-After: 0
Content-Length: 0
Location: https://theguardian.com/
Accept-Ranges: bytes
Date: Mon, 22 Feb 2021 03:56:48 GMT
Via: 1.1 varnish
Connection: close
X-Served-By: cache-wdc5536-WDC
X-Cache: HIT
X-Cache-Hits: 0
X-Timer: S1613966209.663630,VS0,VE0

HTTP/2 301 
server: Varnish
retry-after: 0
location: https://www.theguardian.com/
accept-ranges: bytes
date: Mon, 22 Feb 2021 03:56:48 GMT
via: 1.1 varnish
x-served-by: cache-wdc5571-WDC
x-cache: HIT
x-cache-hits: 0
x-timer: S1613966209.743409,VS0,VE0
strict-transport-security: max-age=31536000
content-length: 0

HTTP/2 302 
retry-after: 0
location: /us
accept-ranges: bytes
date: Mon, 22 Feb 2021 03:56:48 GMT
set-cookie: GU_mvt_id=936337; expires=Sun, 23 May 2021 03:56:48 GMT; path=/; domain=.theguardian.com; Secure
x-timer: S1613966209.854961,VS0,VE0
strict-transport-security: max-age=31536000; includeSubDomains; preload
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
x-content-type-options: nosniff
content-security-policy: default-src https:; script-src https: 'unsafe-inline' 'unsafe-eval' blob: 'unsafe-inline'; frame-src https: data:; style-src https: 'unsafe-inline'; img-src https: data: blob:; media-src https: data: blob:; font-src https: data:; connect-src https: wss:; child-src https: blob:; object-src 'none'; base-uri 'none'
referrer-policy: no-referrer-when-downgrade
feature-policy: camera 'none'; microphone 'none'; midi 'none'; geolocation 'none'
x-gu-edition: us
cache-control: max-age=0, no-transform
set-cookie: GU_geo_continent=NA; path=/; Secure
content-length: 0

HTTP/2 200 
content-type: text/html; charset=UTF-8
etag: W/"hash8976664460043641404"
link: <https://assets.guim.co.uk/stylesheets/70e480c91ab0bc7f3449f4c94740adbd/facia.garnett.css>; rel=preload; as=style; nopush,<https://assets.guim.co.uk/polyfill.io/v3/polyfill.min.js?rum=0&features=es6,es7,es2017,default-3.6,HTMLPictureElement,IntersectionObserver,IntersectionObserverEntry,fetch&flags=gated&callback=guardianPolyfilled&unknown=polyfill&clearCache=5>; rel=preload; as=script; nopush,<https://assets.guim.co.uk/javascripts/38a27aa808b869188af5/graun.standard.js>; rel=preload; as=script; nopush,<https://assets.guim.co.uk/javascripts/5c84b90ee3d2f9fece9b/graun.commercial.js>; rel=preload; as=script; nopush
accept-ranges: bytes
date: Mon, 22 Feb 2021 03:56:48 GMT
age: 80
set-cookie: GU_mvt_id=710738; expires=Sun, 23 May 2021 03:56:48 GMT; path=/; domain=.theguardian.com; Secure
x-timer: S1613966209.876906,VS0,VE2
strict-transport-security: max-age=31536000; includeSubDomains; preload
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
x-content-type-options: nosniff
content-security-policy: default-src https:; script-src https: 'unsafe-inline' 'unsafe-eval' blob: 'unsafe-inline'; frame-src https: data:; style-src https: 'unsafe-inline'; img-src https: data: blob:; media-src https: data: blob:; font-src https: data:; connect-src https: wss:; child-src https: blob:; object-src 'none'; base-uri 'none'
referrer-policy: no-referrer-when-downgrade
feature-policy: camera 'none'; microphone 'none'; midi 'none'; geolocation 'none'
x-gu-edition: us
cache-control: max-age=60, stale-while-revalidate=6, stale-if-error=864000, private, no-transform
vary: Accept-Encoding,User-Agent
set-cookie: GU_geo_continent=NA; path=/; Secure
content-length: 917494

