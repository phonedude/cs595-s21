HTTP/1.1 301 Moved Permanently
Location: https://facebook.com/
Content-Type: text/html; charset="utf-8"
X-FB-Debug: 5CLrWXiLjQKvsvdkkO0rdpIRECYeR86ktuTYVFjVVU5b3ZiDTzKIGMDhq0CLxBmxEDlaIIs/BoN8UFD8pKi8Tw==
Date: Mon, 22 Feb 2021 03:37:47 GMT
Alt-Svc: h3-29=":443"; ma=3600,h3-27=":443"; ma=3600
Connection: keep-alive
Content-Length: 0

HTTP/2 301 
location: https://www.facebook.com/
access-control-allow-methods: OPTIONS
strict-transport-security: max-age=15552000; preload
vary: Origin
access-control-expose-headers: X-FB-Debug, X-Loader-Length
access-control-allow-origin: https://facebook.com
access-control-allow-credentials: true
content-type: text/html; charset="utf-8"
x-fb-debug: lGZERHQRa5vm3gJwDrBD5YC7joWomWV5rMMx+qLltp3TNsLkSkfBi7dWyMRNhbmjA2lo+mULNb/8FFTQpVKsng==
content-length: 0
date: Mon, 22 Feb 2021 03:37:47 GMT
alt-svc: h3-29=":443"; ma=3600,h3-27=":443"; ma=3600

HTTP/2 200 
x-frame-options: DENY
x-xss-protection: 0
x-content-type-options: nosniff
strict-transport-security: max-age=15552000; preload
set-cookie: fr=1b6nDEtEPklvnd3Kt..BgMycL.bx.AAA.0.0.BgMycL.AWWtlWG5xLY; expires=Sun, 23-May-2021 03:37:45 GMT; Max-Age=7775998; path=/; domain=.facebook.com; secure; httponly
set-cookie: sb=CyczYI94IDKdmx3Tyzj2EVQB; expires=Wed, 22-Feb-2023 03:37:47 GMT; Max-Age=63072000; path=/; domain=.facebook.com; secure; httponly
expires: Sat, 01 Jan 2000 00:00:00 GMT
cache-control: private, no-cache, no-store, must-revalidate
vary: Accept-Encoding
pragma: no-cache
x-fb-rlafr: 0
content-type: text/html; charset="utf-8"
x-fb-debug: hIOWHLS8Jm+L+fIbCSLY72CloHeTkxFhmaMRSjsgSpWu4MvVEdkqymp3LumkfCjSas/Ajz0+6+laxMfHf65HFQ==
date: Mon, 22 Feb 2021 03:37:48 GMT
alt-svc: h3-29=":443"; ma=3600,h3-27=":443"; ma=3600

