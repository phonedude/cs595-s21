HTTP/1.1 301 Moved Permanently
Content-Type: application/binary
X-Content-Type-Options: nosniff
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Pragma: no-cache
Expires: Mon, 01 Jan 1990 00:00:00 GMT
Date: Thu, 01 Apr 2021 16:21:16 GMT
Location: https://youtube.com/
Content-Length: 0
X-Frame-Options: SAMEORIGIN
Server: ESF
X-XSS-Protection: 0

HTTP/2 301 
content-type: application/binary
x-content-type-options: nosniff
expires: Thu, 01 Apr 2021 16:21:16 GMT
date: Thu, 01 Apr 2021 16:21:16 GMT
cache-control: private, max-age=31536000
location: https://www.youtube.com/
content-length: 0
x-frame-options: SAMEORIGIN
strict-transport-security: max-age=31536000; includeSubDomains; preload
p3p: CP="This is not a P3P policy! See http://support.google.com/accounts/answer/151657?hl=en for more info."
server: ESF
x-xss-protection: 0
set-cookie: YSC=ff1D_S_8xv0; Domain=.youtube.com; Path=/; Secure; HttpOnly; SameSite=none
set-cookie: VISITOR_INFO1_LIVE=zVH6fC314wE; Domain=.youtube.com; Expires=Tue, 28-Sep-2021 16:21:16 GMT; Path=/; Secure; HttpOnly; SameSite=none
alt-svc: h3-29=":443"; ma=2592000,h3-T051=":443"; ma=2592000,h3-Q050=":443"; ma=2592000,h3-Q046=":443"; ma=2592000,h3-Q043=":443"; ma=2592000,quic=":443"; ma=2592000; v="46,43"

HTTP/2 200 
content-type: text/html; charset=utf-8
x-content-type-options: nosniff
cache-control: no-cache, no-store, max-age=0, must-revalidate
pragma: no-cache
expires: Mon, 01 Jan 1990 00:00:00 GMT
date: Thu, 01 Apr 2021 16:21:16 GMT
content-length: 512540
x-frame-options: SAMEORIGIN
strict-transport-security: max-age=31536000
p3p: CP="This is not a P3P policy! See http://support.google.com/accounts/answer/151657?hl=en for more info."
server: ESF
x-xss-protection: 0
set-cookie: GPS=1; Domain=.youtube.com; Expires=Thu, 01-Apr-2021 16:51:17 GMT; Path=/; Secure; HttpOnly
set-cookie: YSC=GqFEAD93ugM; Domain=.youtube.com; Path=/; Secure; HttpOnly; SameSite=none
set-cookie: VISITOR_INFO1_LIVE=5RgqolMhAJU; Domain=.youtube.com; Expires=Tue, 28-Sep-2021 16:21:17 GMT; Path=/; Secure; HttpOnly; SameSite=none
alt-svc: h3-29=":443"; ma=2592000,h3-T051=":443"; ma=2592000,h3-Q050=":443"; ma=2592000,h3-Q046=":443"; ma=2592000,h3-Q043=":443"; ma=2592000,quic=":443"; ma=2592000; v="46,43"

