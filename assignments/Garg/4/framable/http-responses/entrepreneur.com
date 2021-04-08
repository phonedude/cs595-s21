HTTP/1.1 301 Moved Permanently
Server: Varnish
Retry-After: 0
Content-Type: 
Content-Length: 0
Accept-Ranges: bytes
Date: Thu, 01 Apr 2021 16:19:16 GMT
Via: 1.1 varnish
Connection: close
X-Served-By: cache-wdc5583-WDC
X-Cache: MISS
X-Cache-Hits: 0
X-Timer: S1617293957.555452,VS0,VE0
location: https://www.entrepreneur.com/

HTTP/2 200 
server: nginx
content-type: text/html; charset=UTF-8
cache-control: public, s-maxage=300
accept-ranges: bytes
via: 1.1 varnish, 1.1 varnish
age: 270
set-cookie: language=en; path=/
set-cookie: edition=us; path=/
set-cookie: geo={'latitude':'40.800','longitude':'-73.970','city':'new%20york','continent_code':'NA','country_code':'US','country_code3':'USA','country_name':'united%20states','postal_code':'10025','region':'NY','area_code':'212','metro_code':'501'}; path=/
set-cookie: entrepreneur_permutive=chE5BS8Eb1;expires=Fri, 01 Apr 2022 16:19:17 GMT; path=/; httponly;
set-cookie: entrepreneur_permutive_cs=chE5BS8Eb1;expires=Thu, 08 Apr 2021 16:19:17 GMT; path=/
date: Thu, 01 Apr 2021 16:19:17 GMT
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
set-cookie: entrepreneur_permutive=a7uPl8n1hA;expires=Fri, 01 Apr 2022 16:19:17 GMT; path=/; httponly;
set-cookie: entrepreneur_permutive_cs=a7uPl8n1hA;expires=Thu, 08 Apr 2021 16:19:17 GMT; path=/
x-served-by: cache-sna10748-LGB, cache-lga21937-LGA
x-cache: HIT, MISS
x-cache-hits: 1, 0
x-timer: S1617293957.780854,VS0,VE309
vary: X-UA-Device, X-Edition, Accept-Encoding
content-length: 140961

