HTTP/1.1 301 Moved Permanently
Date: Mon, 22 Feb 2021 03:56:43 GMT
Server: Apache
Location: https://www.sfgate.com/
Cache-Control: max-age=60
Expires: Mon, 22 Feb 2021 03:57:43 GMT
Connection: close
Content-Type: text/html; charset=iso-8859-1

HTTP/2 200 
server: Apache
x-gen-mode: full
x-block-status: fresh
referrer-policy: no-referrer-when-downgrade
edge-control: !no-store, !bypass-cache, cache-maxage=0s, downstream-ttl=300s
cache-control: max-age=0, s-maxage=0
user-cache-control: max-age=300
content-type: text/html; charset=UTF-8
access-control-allow-origin: *
accept-ranges: bytes
date: Mon, 22 Feb 2021 03:56:43 GMT
via: 1.1 varnish
age: 96
set-cookie: btype=web; path=/;
set-cookie: location_data={"is_eu":false,"country_code":"US","postal_code":"1"}; path=/; SameSite=Strict; Secure
set-cookie: hnpdiudpf1=BFJAgZvvZri2XJvRamffyb7yzrMysEY6r9LbRkBdJj8=; domain=sfgate.com; expires=Tue, 22 Feb 2022 03:56:43 GMT; path=/; Secure; HttpOnly
set-cookie: hnpdiudpf2=c6KNzxSWd9jfOJG/aWaxytwkWmc7g92C7i/1Tx90E7o=; domain=sfgate.com; path=/; Secure
set-cookie: ab_bucket=22; expires=Tue, 22 Feb 2022 03:56:43 GMT; path=/; SameSite=none; Secure
x-hnp-log: 
x-served-by: cache-wdc5529-WDC
x-cache: HIT
x-cache-hits: 1
x-timer: S1613966203.418227,VS0,VE1
vary: Accept-Encoding,Fastly-SSL, X-HNP-Instart, X-is-eu, X-ab-scope
content-length: 376604

