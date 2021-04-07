HTTP/1.1 301 Moved Permanently
Server: Varnish
Retry-After: 0
Content-Length: 0
Location: https://www.tes.com/
Accept-Ranges: bytes
Date: Thu, 01 Apr 2021 16:20:53 GMT
Via: 1.1 varnish
Connection: close
Cache-Control: no-transform
X-Served-By: cache-wdc5529-WDC
X-Cache: HIT
X-Cache-Hits: 0

HTTP/2 200 
content-language: en
content-type: text/html; charset=UTF-8
etag: "1617292056"
expires: Sun, 19 Nov 1978 05:00:00 GMT
fastly-drupal-html: YES
last-modified: Thu, 01 Apr 2021 15:47:36 GMT
link: <https://www.tes.com/>; rel="shortlink", <https://www.tes.com/>; rel="canonical"
link: <https://www.tes.com/>; rel="revision"
p3p: CP="ALL ADM DEV PSAi COM OUR OTRo STP IND ONL
server: nginx
x-content-type-options: nosniff
x-drupal-dynamic-cache: HIT
x-frame-options: SAMEORIGIN
x-generator: Drupal 8 (https://www.drupal.org)
x-robots-tag: unavailable_after: Tuesday, 02-Jul-30 11:11:13 BST
x-ua-compatible: IE=edge
via: 1.1 varnish, 1.1 varnish
accept-ranges: bytes
date: Thu, 01 Apr 2021 16:20:53 GMT
age: 1997
set-cookie: geoCountry=US; Domain=.tes.com; Path=/; Secure
set-cookie: siteCountry=US; Max-Age=31556952; Domain=.tes.com; Path=/; Secure
set-cookie: siteInternational=US; Max-Age=31556952; Domain=.tes.com; Path=/; Secure
set-cookie: geoCurrency=USD; Path=/; Secure
set-cookie: siteCurrency=USD; Max-Age=31556952; Path=/; Secure
set-cookie: csrf=7cc82f2f05874f3f7c2b01418ead9f04; Domain=.tes.com; Path=/; Secure
set-cookie: __tese=b4eb5dd9-d660-4578-8ed6-e807b1f47d94; Max-Age=31556952; Domain=.tes.com; Path=/; Secure
cache-control: no-cache, public, no-transform
x-served-by: cache-dub4331-DUB, cache-wdc5540-WDC
x-cache: HIT, HIT
x-cache-hits: 2, 1
vary: Cookie, Accept-Encoding
content-length: 107905

