HTTP/1.1 301 Moved Permanently
Date: Mon, 22 Feb 2021 03:37:28 GMT
Server: Apache
Location: https://www.chron.com/
Cache-Control: max-age=60
Expires: Mon, 22 Feb 2021 03:38:28 GMT
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
date: Mon, 22 Feb 2021 03:37:29 GMT
via: 1.1 varnish
age: 0
set-cookie: btype=web; path=/;
set-cookie: location_data={"is_eu":false,"country_code":"US","postal_code":"1"}; path=/; SameSite=Strict; Secure
set-cookie: hnpdiudpf1=n6vSspncsabvWP07Sy45V/HIdfoJT4jLKC53yuI+fk4=; domain=chron.com; expires=Tue, 22 Feb 2022 03:37:29 GMT; path=/; Secure; HttpOnly
set-cookie: hnpdiudpf2=37QQHcIpb/wvdCFHm4nOfd5mU5MDc10dxiA9KLB4SMA=; domain=chron.com; path=/; Secure
set-cookie: ab_bucket=57; expires=Tue, 22 Feb 2022 03:37:29 GMT; path=/; SameSite=none; Secure
x-hnp-log: 
x-served-by: cache-lga21948-LGA
x-cache: MISS
x-cache-hits: 0
x-timer: S1613965049.874232,VS0,VE602
vary: Accept-Encoding,Fastly-SSL, X-HNP-Instart, X-is-eu, X-ab-scope
content-length: 312212

