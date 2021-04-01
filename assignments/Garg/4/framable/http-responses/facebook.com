HTTP/1.1 301 Moved Permanently
Location: https://facebook.com/
Content-Type: text/html; charset="utf-8"
X-FB-Debug: nQ07bBi1gvkgoEW3rdL835arVtFg92MJzW3rQ74zKr4z8JGuDOtB3nFFsdvAHNEXz9t3gDsYtOGRFykiMIteQQ==
Date: Thu, 01 Apr 2021 16:19:17 GMT
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
x-fb-debug: nkQHxwv0gCXjLfbyPBxaYL1s6iZWiPXDnu9a/vAjCWqYgWAIW58T3xAzYnCkxeodIdwhUdCjyRWl3tjkxKoiyA==
content-length: 0
date: Thu, 01 Apr 2021 16:19:17 GMT
alt-svc: h3-29=":443"; ma=3600,h3-27=":443"; ma=3600

HTTP/2 200 
x-frame-options: DENY
x-xss-protection: 0
x-content-type-options: nosniff
strict-transport-security: max-age=15552000; preload
set-cookie: fr=1FR4fVN1TIApHlUuU..BgZfKF.BE.AAA.0.0.BgZfKF.AWXYypCzhFk; expires=Wed, 30-Jun-2021 16:19:16 GMT; Max-Age=7775999; path=/; domain=.facebook.com; secure; httponly
set-cookie: sb=hfJlYFPsscLLrK1AQgMQb8mX; expires=Sat, 01-Apr-2023 16:19:17 GMT; Max-Age=63072000; path=/; domain=.facebook.com; secure; httponly
expires: Sat, 01 Jan 2000 00:00:00 GMT
cache-control: private, no-cache, no-store, must-revalidate
vary: Accept-Encoding
pragma: no-cache
x-fb-rlafr: 0
content-type: text/html; charset="utf-8"
x-fb-debug: viGCj0YZalaTdgmj8gR1R788dOayiQrsU4Rp29nOOP6nFbVqLHe9Fk+wyiuU2eDmSKM/GdcJFAg/U1dhrKpAeA==
date: Thu, 01 Apr 2021 16:19:17 GMT
priority: u=3,i
alt-svc: h3-29=":443"; ma=3600,h3-27=":443"; ma=3600

