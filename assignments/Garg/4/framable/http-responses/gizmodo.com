HTTP/1.1 301 Moved Permanently
Server: Varnish
Retry-After: 0
Location: https://gizmodo.com/
Content-Length: 0
Accept-Ranges: bytes
Date: Thu, 01 Apr 2021 16:19:19 GMT
Via: 1.1 varnish
Connection: close
X-Served-By: cache-wdc5546-WDC
X-Cache: HIT
X-Cache-Hits: 0
X-Timer: S1617293959.058886,VS0,VE0
Set-Cookie: geocc=US;path=/;

HTTP/2 200 
x-powered-by: Express
x-kinja: kinja-magma-kube02-746ddd9b55-h7g7z #2591
x-kinja-revision: ff2b65e221fa3cf8a7d8a18122aa98c34d25d879
x-kinja-server: kinja-magma-kube02-746ddd9b55-h7g7z
x-kinja-build: 2591
cache-control: stale-if-error=86400, stale-while-revalidate=300
content-security-policy: frame-ancestors 'self'; upgrade-insecure-requests
x-content-type-options: nosniff
x-xss-protection: 1; mode=block
strict-transport-security: max-age=63072000; includeSubDomains; preload
x-googlenews-bot: false
content-type: text/html; charset=utf-8
etag: W/"85c8b-anv9f+cjDErzjwyFdsWbd3wiSno"
via: 1.1 varnish, 1.1 varnish
x-cdn-fetch: mantle-default
accept-ranges: bytes
date: Thu, 01 Apr 2021 16:19:19 GMT
age: 72
x-served-by: cache-bwi5176-BWI, cache-wdc5557-WDC
x-cache: HIT, HIT
x-cache-hits: 1, 1
x-timer: S1617293959.212912,VS0,VE2
x-ua-device: desktop
set-cookie: geocc=US;path=/;
set-cookie: KinjaBucket=4;path=/;Max-Age=31536000;domain=gizmodo.com;SameSite=None;Secure;
set-cookie: KinjaSetBucket=4|1617293700|oVgdJomh7Oyg85uUEfZnvNHknrct8W3mzXqTpj/UErc=;path=/;Max-Age=300;SameSite=None;Secure;
x-exp-id: NotInTest
x-exp-variant: NotInTest
vary: Accept-Encoding, X-Feature-Hash, X-Forwarded-Proto, Cookie, X-GoogleNews-Bot, X-Kinja-WelcomeAdLoadedV1, X-Kinja-Req-Origin-US, X-Kinja-SuperHeroLoaded, X-Kinja-GDPR, X-Kinja-CCPA, Authorization
content-length: 547979

