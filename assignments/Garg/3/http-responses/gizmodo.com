HTTP/1.1 301 Moved Permanently
Server: Varnish
Retry-After: 0
Location: https://gizmodo.com/
Content-Length: 0
Accept-Ranges: bytes
Date: Mon, 22 Feb 2021 03:37:49 GMT
Via: 1.1 varnish
Connection: close
X-Served-By: cache-wdc5523-WDC
X-Cache: HIT
X-Cache-Hits: 0
X-Timer: S1613965070.573881,VS0,VE0
X-Kinja-CCPA: (null)(US-VA)
Set-Cookie: geocc=US;path=/;

HTTP/2 200 
x-powered-by: Express
x-kinja: kinja-magma-kube03-77768b577b-ztfqh #2504
x-kinja-revision: 74f9745508ea681379b19d91c7297813ba4bbf07
x-kinja-server: kinja-magma-kube03-77768b577b-ztfqh
x-kinja-build: 2504
cache-control: stale-if-error=86400, stale-while-revalidate=300
content-security-policy: frame-ancestors 'self'; upgrade-insecure-requests
x-content-type-options: nosniff
x-xss-protection: 1; mode=block
strict-transport-security: max-age=63072000; includeSubDomains; preload
x-googlenews-bot: false
content-type: text/html; charset=utf-8
etag: W/"862a1-xQU5emqcBHDsj86kJI175PN/dAc"
via: 1.1 varnish, 1.1 varnish
x-cdn-fetch: mantle-default
accept-ranges: bytes
date: Mon, 22 Feb 2021 03:37:49 GMT
age: 291
x-served-by: cache-bwi5182-BWI, cache-wdc5535-WDC
x-cache: HIT, HIT
x-cache-hits: 1, 1
x-timer: S1613965070.772918,VS0,VE1
x-ua-device: desktop
x-kinja-ccpa: (null)(US-VA)
set-cookie: geocc=US;path=/;
set-cookie: KinjaBucket=4;path=/;Max-Age=31536000;domain=gizmodo.com;SameSite=None;Secure;
set-cookie: KinjaSetBucket=4|1613964900|RZZKNbojLq7LQIwNyEqsQejZcJcHH1yHPjWZ+rd0lKM=;path=/;Max-Age=300;SameSite=None;Secure;
x-exp-id: NotInTest
x-exp-variant: NotInTest
vary: Accept-Encoding, X-Feature-Hash, X-Forwarded-Proto, Cookie, X-GoogleNews-Bot, X-Kinja-WelcomeAdLoadedV1, X-Kinja-GDPR, X-Kinja-CCPA, Authorization, X-Use-Magma
x-use-magma: yes
content-length: 549537

