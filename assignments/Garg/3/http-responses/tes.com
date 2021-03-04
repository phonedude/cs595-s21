HTTP/1.1 301 Moved Permanently
Server: Varnish
Retry-After: 0
Content-Length: 0
Location: https://www.tes.com/
Accept-Ranges: bytes
Date: Mon, 22 Feb 2021 03:56:47 GMT
Via: 1.1 varnish
Connection: close
Cache-Control: no-transform
X-Served-By: cache-wdc5579-WDC
X-Cache: HIT
X-Cache-Hits: 0

HTTP/2 200 
content-language: en
content-type: text/html; charset=UTF-8
etag: "1613951876"
expires: Sun, 19 Nov 1978 05:00:00 GMT
fastly-drupal-html: YES
last-modified: Sun, 21 Feb 2021 23:57:56 GMT
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
date: Mon, 22 Feb 2021 03:56:47 GMT
age: 14331
set-cookie: geoCountry=US; Domain=.tes.com; Path=/; Secure
set-cookie: siteCountry=US; Max-Age=31556952; Domain=.tes.com; Path=/; Secure
set-cookie: siteInternational=US; Max-Age=31556952; Domain=.tes.com; Path=/; Secure
set-cookie: geoCurrency=USD; Path=/; Secure
set-cookie: siteCurrency=USD; Max-Age=31556952; Path=/; Secure
set-cookie: csrf=398034586fbe4efbffb772949c23d3a2; Domain=.tes.com; Path=/; Secure
set-cookie: __tese=54ae9954-4c8a-4af2-b9bb-64fb9025729b; Max-Age=31556952; Domain=.tes.com; Path=/; Secure
cache-control: no-cache, public, no-transform
x-served-by: cache-dub4351-DUB, cache-lga21978-LGA
x-cache: HIT, HIT
x-cache-hits: 3, 1
vary: Cookie, Accept-Encoding
content-length: 107321

