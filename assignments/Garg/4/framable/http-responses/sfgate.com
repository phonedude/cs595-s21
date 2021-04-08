HTTP/1.1 301 Moved Permanently
Date: Thu, 01 Apr 2021 16:20:49 GMT
Server: Apache
Location: https://www.sfgate.com/
Cache-Control: max-age=60
Expires: Thu, 01 Apr 2021 16:21:49 GMT
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
date: Thu, 01 Apr 2021 16:20:49 GMT
via: 1.1 varnish
age: 8
set-cookie: btype=web; path=/;
set-cookie: location_data={"is_eu":false,"country_code":"US","postal_code":"1"}; path=/; SameSite=Strict; Secure
set-cookie: hnpdiudpf1=XXnRI/+JmcSOP9TDvtUdybtPy4pcKbTZdk0xQB0v0C0=; domain=sfgate.com; expires=Fri, 01 Apr 2022 16:20:49 GMT; path=/; Secure; HttpOnly
set-cookie: hnpdiudpf2=LJXiBhKmYA7UgareFTozq6LLj749m6fl5P+qg3wGQcc=; domain=sfgate.com; path=/; Secure
set-cookie: ab_bucket=1; expires=Fri, 01 Apr 2022 16:20:49 GMT; path=/; SameSite=none; Secure
x-hnp-log: 
x-served-by: cache-lga21968-LGA
x-cache: HIT
x-cache-hits: 1
x-timer: S1617294049.379164,VS0,VE2
vary: Accept-Encoding,Fastly-SSL, X-HNP-Instart, X-is-eu, X-ab-scope
content-length: 368391

