HTTP/1.1 301 Moved Permanently
Date: Thu, 01 Apr 2021 16:19:01 GMT
Server: Apache
Location: https://www.chron.com/
Cache-Control: max-age=60
Expires: Thu, 01 Apr 2021 16:20:01 GMT
Connection: close
Content-Type: text/html; charset=iso-8859-1

HTTP/2 200 
server: Apache
x-gen-mode: full
x-block-status: fresh
referrer-policy: no-referrer-when-downgrade
cache-control: max-age=0, s-maxage=0
user-cache-control: max-age=300
content-type: text/html; charset=UTF-8
access-control-allow-origin: *
accept-ranges: bytes
date: Thu, 01 Apr 2021 16:19:01 GMT
via: 1.1 varnish
age: 0
set-cookie: btype=web; path=/;
set-cookie: location_data={"is_eu":false,"country_code":"US","postal_code":"1"}; path=/; SameSite=Strict; Secure
set-cookie: hnpdiudpf1=Z61NPpnfWhlC+o9Bi3WYSDemVXjgmFhRfrZXCjLyHSg=; domain=chron.com; expires=Fri, 01 Apr 2022 16:19:01 GMT; path=/; Secure; HttpOnly
set-cookie: hnpdiudpf2=fdP4Yyvo7aHx70MuHjnndIphYUX5p/xC2y5TD1k2qRk=; domain=chron.com; path=/; Secure
set-cookie: ab_bucket=15; expires=Fri, 01 Apr 2022 16:19:01 GMT; path=/; SameSite=none; Secure
x-hnp-log: 
x-served-by: cache-wdc5565-WDC
x-cache: MISS
x-cache-hits: 0
x-timer: S1617293942.566358,VS0,VE330
vary: Accept-Encoding,Fastly-SSL, X-HNP-Instart, X-is-eu, X-ab-scope
content-length: 310406

