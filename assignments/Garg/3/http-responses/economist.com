HTTP/1.1 301 Moved Permanently
Location: http://www.economist.com/
Content-Length: 0
Connection: close

HTTP/1.1 301 Moved Permanently
Server: CloudFront
Date: Mon, 22 Feb 2021 03:37:44 GMT
Content-Type: text/html
Content-Length: 183
Connection: keep-alive
Location: https://www.economist.com/
X-Cache: Redirect from cloudfront
Via: 1.1 e4c06b6e6eb895470e2fd65bbc93b3b6.cloudfront.net (CloudFront)
X-Amz-Cf-Pop: IAD79-C3
X-Amz-Cf-Id: tO1WCiaw_KefNu8vf-lt0CHFcCY_lzFsFo6aGTDpItgo1OySK0eyMQ==
Set-Cookie: visid_incap_121505=FIiFqhAWSGOY35uWR1SetwgnM2AAAAAAQUIPAAAAAAAyMN8SOXYXkXfd6chxImyL; expires=Mon, 21 Feb 2022 22:47:24 GMT; HttpOnly; path=/; Domain=.economist.com
Set-Cookie: nlbi_121505=Ox2ULPN75UVkYXjjntKrYQAAAADPkgHaqXtdZkcIiRXgF9Bi; path=/; Domain=.economist.com
Set-Cookie: incap_ses_1351_121505=F/sJeoyQnkFyp2vgdbe/EggnM2AAAAAAgDCiLOkJdJGWEVW8MoOpXQ==; path=/; Domain=.economist.com
X-CDN: Imperva
X-Iinfo: 12-83484198-83484199 NNNN CT(2 -1 0) RT(1613965064805 0) q(0 0 0 1) r(0 0) U5

HTTP/2 200 
content-type: text/html; charset=utf-8
content-length: 193928
vary: Accept-Encoding
date: Mon, 22 Feb 2021 03:37:45 GMT
x-economist-env: ecs
cache-control: public,must-revalidate,max-age=300,s-maxage=600
set-cookie: economist_has_visited_app_before=true; Path=/; expires=Sat, 22 May 2021 03:35:44 GMT;
etag: "2f588-WcR1/01FKl63TaEpJNYIdvEZWcs"
x-amz-cf-pop: IAD66-C2
set-cookie: geo_country=US;Domain=.economist.com;Path=/;
set-cookie: geo_region=NA;Domain=.economist.com;Path=/;
x-journey: NewEconomistSite
set-cookie: rvjourney=NewEconomistSite/50/50/NewEconomistSite;Domain=.economist.com;Path=/;Max-Age=63072000
set-cookie: rvuuid=9031a0f29c466689f94b488ef36bda06;Domain=.economist.com;Path=/;Max-Age=2147483647
x-cache: Miss from cloudfront
via: 1.1 11e42b3facdb2abb175876ba0e4b97f9.cloudfront.net (CloudFront)
x-amz-cf-pop: IAD79-C3
x-amz-cf-id: vity1aU12YqhOMwdkam8eU6l37Ke0P8yls3Z9kJUGDhFGvUzGbOKFQ==
age: 121
set-cookie: visid_incap_121505=oGJKWVVVRyS7bW5KLd0sPwknM2AAAAAAQUIPAAAAAADQ8I5HVN1Cz6eXFGDuXrVd; expires=Mon, 21 Feb 2022 22:47:24 GMT; HttpOnly; path=/; Domain=.economist.com
set-cookie: nlbi_121505=H2IfNRRfnESZE14CntKrYQAAAABOsm5CiWa6BW9xdIt5I3kC; path=/; Domain=.economist.com
set-cookie: incap_ses_1351_121505=J2leXdjC6mDUp2vgdbe/EgknM2AAAAAA+B2u/v5yOy2jSh6455U/vA==; path=/; Domain=.economist.com
x-cdn: Imperva
x-iinfo: 14-102997482-102991432 PNNN RT(1613965065103 0) q(0 0 0 -1) r(0 0) U5

