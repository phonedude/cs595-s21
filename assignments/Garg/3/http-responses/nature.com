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
Server: Oscar Platform 0.496.0
X-Vcap-Request-Id: 10cab9c3-f2ec-49de-7e59-aaaf4159eadb
Via: 1.1 google, 1.1 varnish
X-Cdn-Origin: SNPaaS
Content-Length: 166
Accept-Ranges: bytes
Date: Mon, 22 Feb 2021 03:39:04 GMT
Age: 435
Connection: close
X-Served-By: cache-wdc5526-WDC
X-Cache: HIT
X-Cache-Hits: 1
X-Timer: S1613965144.392230,VS0,VE1
Vary: x-forwarded-host, upgrade-insecure-requests

HTTP/2 303 
age: 0
cache-control: private,must-revalidate,max-age=0,no-store
content-type: text/html; charset="UTF-8"
location: https://idp.nature.com/authorize?response_type=cookie&client_id=grover&redirect_uri=https%3A%2F%2Fwww.nature.com%2Fnature
server: Oscar Platform 0.496.0
strict-transport-security: max-age=31536000;preload
x-b3-parentspanid: f7c227b2c53034e0
x-b3-sampled: 0
x-b3-spanid: 538730d9507404b9
x-b3-traceid: f7c227b2c53034e0
x-cache-grace: NO
x-cacheable: NO:Not Cacheable
x-content-type-options: nosniff
x-dump-request-bodies: 0
x-forwarded-host: www.nature.com
x-frame-options: DENY
x-sn-servicetimems: 6
x-vcap-request-id: 6f574ece-f94a-4b52-5076-e8bb7f367df1
x-xss-protection: 1; mode=block
via: 1.1 google, 1.1 varnish
x-cdn-origin: SNPaaS
accept-ranges: bytes
date: Mon, 22 Feb 2021 03:39:04 GMT
x-served-by: b4887195-c403-4a4b-b7d1-9adf4ea7f03e, cache-wdc5531-WDC
x-cache: MISS, MISS
x-cache-hits: 0
x-timer: S1613965145.508228,VS0,VE108
vary: x-springer-property-json,X-Frame-Options,X-Oscar-Cache-Mode
content-length: 0

HTTP/2 302 
cache-control: no-cache, no-store, max-age=0, must-revalidate
expires: 0
location: https://idp.nature.com/transit?redirect_uri=https%3A%2F%2Fwww.nature.com%2Fnature&code=96933168-6314-4553-9b8c-53ef4711f21f
pragma: no-cache
set-cookie: idp_session=sVERSION_1a64320aa-b22b-494c-8092-88229257c696; Domain=.nature.com; Path=/; Secure; HttpOnly
set-cookie: idp_session_http=hVERSION_14c5a1503-ddce-496f-a7c1-02bce03d13f0; Domain=.nature.com; Path=/; HttpOnly
set-cookie: idp_marker=91a636a5-7b4e-4596-afb3-e87d3a941f15; Domain=.nature.com; Path=/; Max-Age=315360000; HttpOnly
strict-transport-security: max-age=31536000 ; includeSubDomains
x-b3-spanid: 00f74fba03e29a62
x-b3-traceid: 00f74fba03e29a62
x-content-type-options: nosniff
x-frame-options: DENY
x-vcap-request-id: e6597efe-d08e-4f5c-7cc4-415a4c9723bc
x-xss-protection: 1; mode=block
via: 1.1 google, 1.1 varnish
x-cdn-origin: SNPaaS
accept-ranges: bytes
date: Mon, 22 Feb 2021 03:39:04 GMT
x-served-by: cache-lga21932-LGA
x-cache: MISS
x-cache-hits: 0
x-timer: S1613965145.736972,VS0,VE124
vary: x-forwarded-proto
content-length: 0

HTTP/2 302 
cache-control: no-cache, no-store, max-age=0, must-revalidate
content-language: en-US
expires: 0
location: https://www.nature.com/nature?error=cookies_not_supported&code=96933168-6314-4553-9b8c-53ef4711f21f
pragma: no-cache
strict-transport-security: max-age=31536000 ; includeSubDomains
x-b3-spanid: a6bbb66996e4a16d
x-b3-traceid: a6bbb66996e4a16d
x-content-type-options: nosniff
x-frame-options: DENY
x-vcap-request-id: 82561db3-ef49-4597-7213-daaef39e2526
x-xss-protection: 1; mode=block
via: 1.1 google, 1.1 varnish
x-cdn-origin: SNPaaS
accept-ranges: bytes
date: Mon, 22 Feb 2021 03:39:04 GMT
x-served-by: cache-lga21932-LGA
x-cache: MISS
x-cache-hits: 0
x-timer: S1613965145.886006,VS0,VE82
vary: x-forwarded-proto
content-length: 0

HTTP/2 301 
cache-control: public,max-age=600
content-type: text/html
location: https://www.nature.com/?error=cookies_not_supported&code=96933168-6314-4553-9b8c-53ef4711f21f
server: Oscar Platform 0.496.0
strict-transport-security: max-age=31536000;preload
x-vcap-request-id: 84e4242a-3904-47d7-5434-491a62a8f14c
via: 1.1 google, 1.1 varnish
x-cdn-origin: SNPaaS
accept-ranges: bytes
date: Mon, 22 Feb 2021 03:39:05 GMT
age: 0
x-served-by: cache-wdc5531-WDC
x-cache: MISS
x-cache-hits: 0
x-timer: S1613965145.004512,VS0,VE88
vary: x-forwarded-host, upgrade-insecure-requests
content-length: 166

HTTP/2 200 
accept-ranges: bytes
age: 0
cache-control: private, must-revalidate
content-type: text/html; charset="UTF-8"
etag: W/"178933058f077dc0a4e9366ea30afe35"
server: Oscar Platform 0.496.0
strict-transport-security: max-age=31536000;preload
x-b3-parentspanid: a3295ecaf6b12440
x-b3-sampled: 0
x-b3-spanid: acbf7aa9aeb83408
x-b3-traceid: a3295ecaf6b12440
x-cache-grace: NO
x-cacheable: NO:Not Cacheable
x-content-type-options: nosniff
x-dump-request-bodies: 0
x-forwarded-host: www.nature.com
x-frame-options: DENY
x-sn-servicetimems: 83
x-vcap-request-id: d5e96872-4473-424e-5bb0-00e92ea94a73
x-xss-protection: 1; mode=block
via: 1.1 google, 1.1 varnish
x-cdn-origin: SNPaaS
date: Mon, 22 Feb 2021 03:39:05 GMT
x-served-by: a9b75310-0963-4f60-a880-c10812ff25c8, cache-wdc5531-WDC
x-cache: MISS, MISS
x-cache-hits: 0
x-timer: S1613965145.112704,VS0,VE198
vary: x-springer-property-json,X-Frame-Options,X-Oscar-Cache-Mode, Accept-Encoding

