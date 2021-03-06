HTTP/1.1 301 Redirect
Date: Mon, 22 Feb 2021 03:37:50 GMT
Connection: keep-alive
Server: ATS
Cache-Control: no-store
Location: https://www.yahoo.com/
Content-Type: text/html
Content-Language: en
Content-Length: 304

HTTP/2 200 
date: Mon, 22 Feb 2021 03:37:51 GMT
strict-transport-security: max-age=31536000
server: ATS
cache-control: no-store, no-cache, max-age=0, private
content-type: text/html
content-language: en
expires: -1
content-security-policy: frame-ancestors 'self' https://*.techcrunch.com https://*.yahoo.com https://*.aol.com https://*.huffingtonpost.com https://*.oath.com https://*.search.yahoo.com https://*.search.aol.com https://*.search.huffpost.com https://*.verizonmedia.com https://*.publishing.oath.com https://*.autoblog.com; sandbox allow-forms allow-same-origin allow-scripts allow-popups allow-popups-to-escape-sandbox allow-presentation; report-uri https://csp.yahoo.com/beacon/csp?src=ats&site=frontpage&region=US&lang=en-US&device=desktop&yrid=&partner=;
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
expect-ct: max-age=31536000, report-uri="http://csp.yahoo.com/beacon/csp?src=yahoocom-expect-ct-report-only"
referrer-policy: no-referrer-when-downgrade
x-content-type-options: nosniff
content-length: 12

