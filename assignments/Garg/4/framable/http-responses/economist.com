HTTP/1.1 301 Moved Permanently
Date: Thu, 01 Apr 2021 16:19:15 GMT
Connection: keep-alive
Cache-Control: max-age=3600
Expires: Thu, 01 Apr 2021 17:19:15 GMT
Location: https://www.economist.com/
cf-request-id: 092fd469660000c06ba50e5000000001
Server: cloudflare
CF-RAY: 639323557ff2c06b-ORF
alt-svc: h3-27=":443"; ma=86400, h3-28=":443"; ma=86400, h3-29=":443"; ma=86400

HTTP/2 200 
date: Thu, 01 Apr 2021 16:19:15 GMT
content-type: text/html; charset=utf-8
set-cookie: __cfduid=da6f76ed107d10768413d6da94db465c91617293955; expires=Sat, 01-May-21 16:19:15 GMT; path=/; domain=.economist.com; HttpOnly; SameSite=Lax; Secure
x-economist-env: ecs
cache-control: public,must-revalidate,max-age=300,s-maxage=600
set-cookie: economist_has_visited_app_before=true; Path=/; expires=Thu, 01 Jul 2021 16:15:22 GMT;
x-amz-cf-pop: IAD66-C2
x-journey: NewEconomistSite
set-cookie: rvjourney=NewEconomistSite/50/50/NewEconomistSite;Domain=.economist.com;Path=/;Max-Age=63072000
set-cookie: rvuuid=73c087acf2eb3cdcc847282c70b63dff;Domain=.economist.com;Path=/;Max-Age=2147483647
x-cache: Miss from cloudfront
via: 1.1 366b9fc9e06517905c8f46d7549058fc.cloudfront.net (CloudFront)
x-amz-cf-pop: IAD79-C3
x-amz-cf-id: 6d1HtaMxcN00TnyYnLeYtPu_ffm1nqoBO9LB60sgxya6URtoDk0Mzg==
age: 233
cf-cache-status: DYNAMIC
cf-request-id: 092fd469d70000c0989d31d000000001
expect-ct: max-age=604800, report-uri="https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct"
server: cloudflare
cf-ray: 639323562964c098-ORF
alt-svc: h3-27=":443"; ma=86400, h3-28=":443"; ma=86400, h3-29=":443"; ma=86400

