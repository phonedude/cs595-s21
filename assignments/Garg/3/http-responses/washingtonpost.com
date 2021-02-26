HTTP/1.1 301 Moved Permanently
Server: CloudFront
Date: Mon, 22 Feb 2021 03:57:01 GMT
Content-Type: text/html
Content-Length: 183
Connection: keep-alive
Location: https://washingtonpost.com/
X-Cache: Redirect from cloudfront
Via: 1.1 076da3643179565aba2eda873738d6b6.cloudfront.net (CloudFront)
X-Amz-Cf-Pop: IAD66-C1
X-Amz-Cf-Id: R-Y_lwoh72uNUDzW01NryLmSFbBg7B1H1TRufonCXqTuUMJsoL0KUQ==

HTTP/2 301 
content-length: 0
location: https://www.washingtonpost.com/
date: Mon, 22 Feb 2021 03:53:05 GMT
server: AmazonS3
x-cache: Hit from cloudfront
via: 1.1 7304a96518f6c4657eabe5542a78c41a.cloudfront.net (CloudFront)
x-amz-cf-pop: IAD66-C1
x-amz-cf-id: 7YQChLs3SE_NpcJrwHXXAD5VeopO8pSZO4OWlaNPB8JgdNuILow2jw==
age: 237

HTTP/2 200 
content-type: text/html; charset=utf-8
server: openresty
fusion-content-id: undefined
fusion-content-source: undefined
fusion-template-id: page/pMEVjk1OZnv23s
fusion-component-id: undefined
fusion-deployment-id: 377
etag: W/"ed253-U+8xedqWbfAP9/NhsIbe2vrncIU"
fusion-source: lambda
last-modified: Monday, 22-Feb-2021 03:57:11 GMT
x-served-by: pf
x-origin-cache: EXPIRED
x-origin-upstream-status: 200
cache-control: max-age=60
expires: Mon, 22 Feb 2021 03:58:11 GMT
date: Mon, 22 Feb 2021 03:57:11 GMT
set-cookie: wp_devicetype=0; expires=Wed, 24-Mar-2021 03:57:11 GMT; path=/; domain=.washingtonpost.com; secure; SameSite=None
set-cookie: wp_country=US; expires=Mon, 22-Feb-2021 04:57:11 GMT; path=/; domain=.washingtonpost.com; secure; SameSite=None
set-cookie: rplampr=0a|20181213; expires=Tue, 22-Feb-2022 03:57:11 GMT; path=/; domain=.washingtonpost.com
set-cookie: wp_ak_subs=0|20210217; expires=Mon, 3-May-2021 19:19:29 GMT; path=/; domain=.washingtonpost.com; SameSite=None; secure
set-cookie: wp_ak_v_m=0|20210217; expires=Mon, 3-May-2021 19:19:29 GMT; path=/; domain=.washingtonpost.com; SameSite=None; secure
content-security-policy: upgrade-insecure-requests

