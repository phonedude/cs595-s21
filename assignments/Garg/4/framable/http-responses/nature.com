HTTP/1.0 301 Moved Permanently
Location: http://www.nature.com/
Server: BigIP
Connection: Keep-Alive
Content-Length: 0

HTTP/1.1 301 Moved Permanently
Cache-Control: public,max-age=600
Content-Security-Policy: upgrade-insecure-requests;
Content-Type: text/html
Location: https://www.nature.com/
Server: Oscar Platform 0.514.0
X-Vcap-Request-Id: 14f6d80f-7d1b-4925-651f-44552d2c7343
Via: 1.1 google, 1.1 varnish
X-Cdn-Origin: SNPaaS
Content-Length: 166
Accept-Ranges: bytes
Date: Thu, 01 Apr 2021 16:20:30 GMT
Age: 429
Connection: close
X-Served-By: cache-lga21927-LGA
X-Cache: HIT
X-Cache-Hits: 1
X-Timer: S1617294031.790157,VS0,VE1
Vary: x-forwarded-host, upgrade-insecure-requests

HTTP/2 303 
age: 0
cache-control: private,must-revalidate,max-age=0,no-store
content-type: text/html; charset="UTF-8"
location: https://idp.nature.com/authorize?response_type=cookie&client_id=grover&redirect_uri=https%3A%2F%2Fwww.nature.com%2Fnature
server: Oscar Platform 0.514.0
strict-transport-security: max-age=31536000;preload
x-b3-parentspanid: 0fdd6f61b7c391f5
x-b3-sampled: 0
x-b3-spanid: 8fd717e8fd8539c3
x-b3-traceid: 0fdd6f61b7c391f5
x-cache-grace: NO
x-cacheable: NO:Not Cacheable
x-content-type-options: nosniff
x-dump-request-bodies: 0
x-forwarded-host: www.nature.com
x-frame-options: DENY
x-sn-servicetimems: 4
x-vcap-request-id: 9fae3d47-a0ba-46d6-6634-7435b8fa03cb
x-xss-protection: 1; mode=block
via: 1.1 google, 1.1 varnish
x-cdn-origin: SNPaaS
accept-ranges: bytes
date: Thu, 01 Apr 2021 16:20:31 GMT
x-served-by: 9c83ab6f-ae74-4b77-95bd-d22346b99fb3, cache-lga21949-LGA
x-cache: MISS, MISS
x-cache-hits: 0
x-timer: S1617294031.942132,VS0,VE99
vary: x-springer-property-json,X-Frame-Options,X-Oscar-Cache-Mode
content-length: 0

HTTP/2 302 
cache-control: no-cache, no-store, max-age=0, must-revalidate
expires: 0
location: https://idp.nature.com/transit?redirect_uri=https%3A%2F%2Fwww.nature.com%2Fnature&code=e65624aa-b2f3-4eda-b238-8af14f31d811
pragma: no-cache
set-cookie: idp_session=sVERSION_1aab60832-c33c-4cf1-9cbc-86cbf60b894b; Domain=.nature.com; Path=/; Secure; HttpOnly
set-cookie: idp_session_http=hVERSION_1106f986a-147c-4d9e-9e8c-cbb3b67373a9; Domain=.nature.com; Path=/; HttpOnly
set-cookie: idp_marker=00633134-70c5-4a4c-b131-2185056db602; Domain=.nature.com; Path=/; Max-Age=315360000; HttpOnly
strict-transport-security: max-age=31536000 ; includeSubDomains
x-b3-spanid: 58c01f7973193ee5
x-b3-traceid: 58c01f7973193ee5
x-content-type-options: nosniff
x-frame-options: DENY
x-vcap-request-id: c71720e6-dabe-4a56-7e19-1b4fa5f25db3
x-xss-protection: 1; mode=block
via: 1.1 google, 1.1 varnish
x-cdn-origin: SNPaaS
accept-ranges: bytes
date: Thu, 01 Apr 2021 16:20:31 GMT
x-served-by: cache-lga21960-LGA
x-cache: MISS
x-cache-hits: 0
x-timer: S1617294031.204866,VS0,VE88
vary: x-forwarded-proto
content-length: 0

HTTP/2 302 
cache-control: no-cache, no-store, max-age=0, must-revalidate
content-language: en-US
expires: 0
location: https://www.nature.com/nature?error=cookies_not_supported&code=e65624aa-b2f3-4eda-b238-8af14f31d811
pragma: no-cache
strict-transport-security: max-age=31536000 ; includeSubDomains
x-b3-spanid: e11b5d42a9db8662
x-b3-traceid: e11b5d42a9db8662
x-content-type-options: nosniff
x-frame-options: DENY
x-vcap-request-id: ae52d3fc-1dc6-41dd-6274-1693b5fbd436
x-xss-protection: 1; mode=block
via: 1.1 google, 1.1 varnish
x-cdn-origin: SNPaaS
accept-ranges: bytes
date: Thu, 01 Apr 2021 16:20:31 GMT
x-served-by: cache-lga21960-LGA
x-cache: MISS
x-cache-hits: 0
x-timer: S1617294031.332421,VS0,VE82
vary: x-forwarded-proto
content-length: 0

HTTP/2 301 
cache-control: public,max-age=600
content-type: text/html
location: https://www.nature.com/?error=cookies_not_supported&code=e65624aa-b2f3-4eda-b238-8af14f31d811
server: Oscar Platform 0.514.0
strict-transport-security: max-age=31536000;preload
x-vcap-request-id: 088f2eb3-702f-49dd-7c04-0199879f449c
via: 1.1 google, 1.1 varnish
x-cdn-origin: SNPaaS
accept-ranges: bytes
date: Thu, 01 Apr 2021 16:20:31 GMT
age: 0
x-served-by: cache-lga21949-LGA
x-cache: MISS
x-cache-hits: 0
x-timer: S1617294031.450182,VS0,VE83
vary: x-forwarded-host, upgrade-insecure-requests
content-length: 166

HTTP/2 200 
accept-ranges: bytes
age: 0
cache-control: private, must-revalidate
content-type: text/html; charset="UTF-8"
etag: W/"4957fa83c172389b3196f7e0c5172f7d"
server: Oscar Platform 0.514.0
strict-transport-security: max-age=31536000;preload
x-b3-parentspanid: 9b63121251dcf19e
x-b3-sampled: 0
x-b3-spanid: d48fdf973c6c41f9
x-b3-traceid: 9b63121251dcf19e
x-cache-grace: NO
x-cacheable: NO:Not Cacheable
x-content-type-options: nosniff
x-dump-request-bodies: 0
x-forwarded-host: www.nature.com
x-frame-options: DENY
x-sn-servicetimems: 59
x-vcap-request-id: 2007e041-381b-4cbd-52da-ff4c7cb52f29
x-xss-protection: 1; mode=block
via: 1.1 google, 1.1 varnish
x-cdn-origin: SNPaaS
date: Thu, 01 Apr 2021 16:20:31 GMT
x-served-by: 9aa06aa3-453a-4b74-a190-e6a08bdf72f2, cache-lga21949-LGA
x-cache: MISS, MISS
x-cache-hits: 0
x-timer: S1617294032.579743,VS0,VE164
vary: x-springer-property-json,X-Frame-Options,X-Oscar-Cache-Mode, Accept-Encoding

