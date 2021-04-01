HTTP/1.1 301 Moved Permanently
Server: awselb/2.0
Date: Thu, 01 Apr 2021 16:20:37 GMT
Content-Type: text/html
Content-Length: 134
Connection: keep-alive
Location: https://offset.com:443/

HTTP/2 301 
server: awselb/2.0
date: Thu, 01 Apr 2021 16:20:37 GMT
content-type: text/html
content-length: 134
location: https://www.offset.com:443/

HTTP/2 200 
date: Thu, 01 Apr 2021 16:20:38 GMT
content-type: text/html; charset=utf-8
content-length: 88269
server: nginx
x-frame-options: DENY
set-cookie: _photo_session_id=U_99WKJEW-eO6MgoJu9QNrr11PEtkkCH; Domain=.offset.com; Path=/; HttpOnly; Secure; SameSite=Lax
set-cookie: visit_id=70676800792; Domain=.offset.com; Path=/; Expires=Thu, 01 Apr 2021 16:50:38 GMT
set-cookie: visitor_id=64958661843; Domain=.offset.com; Path=/; Expires=Tue, 01 Apr 2031 16:20:38 GMT
set-cookie: did=4ae65e31-adbf-4dff-8354-da45575e932b; Max-Age=315360000; Domain=.offset.com; Path=/; Expires=Sun, 30 Mar 2031 16:20:38 GMT; Secure; SameSite=None
set-cookie: seen_locales=j%3A%5B%22en%22%5D; Domain=.offset.com; Path=/; HttpOnly; Secure; SameSite=Lax
set-cookie: offset.prod.sid=s%3AU_99WKJEW-eO6MgoJu9QNrr11PEtkkCH.5aPsEFXL2s6IGDxxjK4MYHk08A6YyQBrltjRQYzaE%2Fg; Domain=.offset.com; Path=/; HttpOnly; Secure; SameSite=Lax
x-end-user-visit-id: 70676800792
x-end-user-visitor-id: 64958661843
etag: W/"158cd-V0bAOd2cHOvt3RrCppA4W2yljbE"

