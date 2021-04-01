HTTP/1.1 301 Moved Permanently
Location: https://www.google.com/
Content-Type: text/html; charset=UTF-8
X-Content-Type-Options: nosniff
Date: Thu, 01 Apr 2021 16:08:06 GMT
Expires: Thu, 01 Apr 2021 16:38:06 GMT
Server: sffe
Content-Length: 220
X-XSS-Protection: 0
Cache-Control: public, max-age=1800
Age: 672

HTTP/2 200 
content-type: text/html; charset=ISO-8859-1
p3p: CP="This is not a P3P policy! See g.co/p3phelp for more info."
date: Thu, 01 Apr 2021 16:19:18 GMT
server: gws
x-xss-protection: 0
x-frame-options: SAMEORIGIN
expires: Thu, 01 Apr 2021 16:19:18 GMT
cache-control: private
set-cookie: 1P_JAR=2021-04-01-16; expires=Sat, 01-May-2021 16:19:18 GMT; path=/; domain=.google.com; Secure
set-cookie: NID=212=lprq0DBNfVg2fHIHFd0mMA_BLJYqWScd3A_27tNaujn34GX7ItDGPX80b4dST2zDtNzlcEFaaqYcDleioEDJiNaNYCMZX6-kRmwjnKpAQssuzbP17I7gT8-hxBDtVjoX38OBFw9dmeidks-dsyk4tuzTaxS3jPotvT4vq2hO1TM; expires=Fri, 01-Oct-2021 16:19:18 GMT; path=/; domain=.google.com; HttpOnly
alt-svc: h3-29=":443"; ma=2592000,h3-T051=":443"; ma=2592000,h3-Q050=":443"; ma=2592000,h3-Q046=":443"; ma=2592000,h3-Q043=":443"; ma=2592000,quic=":443"; ma=2592000; v="46,43"

