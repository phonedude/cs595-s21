HTTP/1.1 301 Moved Permanently
Server: Varnish
Retry-After: 0
Content-Type: 
Content-Length: 0
Accept-Ranges: bytes
Date: Mon, 22 Feb 2021 03:37:46 GMT
Via: 1.1 varnish
Connection: close
X-Served-By: cache-wdc5582-WDC
X-Cache: MISS
X-Cache-Hits: 0
X-Timer: S1613965067.564640,VS0,VE0
location: https://www.entrepreneur.com/

HTTP/2 200 
server: nginx
content-type: text/html; charset=UTF-8
cache-control: public, s-maxage=300
accept-ranges: bytes
via: 1.1 varnish, 1.1 varnish
age: 110
set-cookie: language=en; path=/
set-cookie: edition=us; path=/
set-cookie: geo={'latitude':'39.030','longitude':'-77.490','city':'ashburn','continent_code':'NA','country_code':'US','country_code3':'USA','country_name':'united%20states','postal_code':'20147','region':'VA','area_code':'703','metro_code':'511'}; path=/
set-cookie: entrepreneur_permutive=uEWIQghupH;expires=Tue, 22 Feb 2022 03:37:47 GMT; path=/; httponly;
set-cookie: entrepreneur_permutive_cs=uEWIQghupH;expires=Mon, 01 Mar 2021 03:37:47 GMT; path=/
date: Mon, 22 Feb 2021 03:37:47 GMT
x-debug-ua-device: desktop
x-debug-country-code: US
x-debug-edition: us
x-debug-language: en
content-security-policy: frame-ancestors 'self'
x-content-type-options: nosniff
strict-transport-security: max-age=86400
set-cookie: language=en; path=/
set-cookie: edition=us; path=/
set-cookie: geo={'latitude':'36.890','longitude':'-76.310','city':'norfolk','continent_code':'NA','country_code':'US','country_code3':'USA','country_name':'united%20states','postal_code':'23508','region':'VA','area_code':'757','metro_code':'544'}; path=/
set-cookie: entrepreneur_permutive=xBKyrw6eql;expires=Tue, 22 Feb 2022 03:37:47 GMT; path=/; httponly;
set-cookie: entrepreneur_permutive_cs=xBKyrw6eql;expires=Mon, 01 Mar 2021 03:37:47 GMT; path=/
x-served-by: cache-sna10738-LGB, cache-wdc5544-WDC
x-cache: HIT, MISS
x-cache-hits: 1, 0
x-timer: S1613965067.825440,VS0,VE296
vary: X-UA-Device, X-Edition, Accept-Encoding
content-length: 140770

