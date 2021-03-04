HTTP/1.1 301 Moved Permanently
Server: awselb/2.0
Date: Mon, 22 Feb 2021 03:39:10 GMT
Content-Type: text/html
Content-Length: 134
Connection: keep-alive
Location: https://offset.com:443/

HTTP/2 301 
server: awselb/2.0
date: Mon, 22 Feb 2021 03:39:10 GMT
content-type: text/html
content-length: 134
location: https://www.offset.com:443/

HTTP/2 200 
date: Mon, 22 Feb 2021 03:39:11 GMT
content-type: text/html; charset=utf-8
content-length: 103950
server: nginx
x-frame-options: DENY
set-cookie: _photo_session_id=lprakq59agM4R6UjDz3WVRR-3IqHcdLD; Domain=.offset.com; Path=/; HttpOnly; Secure; SameSite=Lax
set-cookie: visit_id=70242231211; Domain=.offset.com; Path=/; Expires=Mon, 22 Feb 2021 04:09:11 GMT
set-cookie: visitor_id=64593024229; Domain=.offset.com; Path=/; Expires=Sat, 22 Feb 2031 03:39:11 GMT
set-cookie: did=b1df0974-6d42-45b7-a973-9853bc7956bb; Max-Age=315360000; Domain=.offset.com; Path=/; Expires=Thu, 20 Feb 2031 03:39:11 GMT; Secure; SameSite=None
set-cookie: seen_locales=j%3A%5B%22en%22%5D; Domain=.offset.com; Path=/; HttpOnly; Secure; SameSite=Lax
set-cookie: offset.prod.sid=s%3Alprakq59agM4R6UjDz3WVRR-3IqHcdLD.ZScyfFzRU7%2FHJUnjtjl35QVfaIiwz5SAZxLt1etADDY; Domain=.offset.com; Path=/; HttpOnly; Secure; SameSite=Lax
x-end-user-visit-id: 70242231211
x-end-user-visitor-id: 64593024229
etag: W/"1960e-I28xbrpDwxR7fE0THf/xw6Or7gQ"

