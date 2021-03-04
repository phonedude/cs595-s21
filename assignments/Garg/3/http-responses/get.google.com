HTTP/1.1 301 Moved Permanently
Location: https://www.google.com/
Content-Type: text/html; charset=UTF-8
X-Content-Type-Options: nosniff
Date: Mon, 22 Feb 2021 03:19:08 GMT
Expires: Mon, 22 Feb 2021 03:49:08 GMT
Server: sffe
Content-Length: 220
X-XSS-Protection: 0
Cache-Control: public, max-age=1800
Age: 1120

HTTP/2 200 
content-type: text/html; charset=ISO-8859-1
p3p: CP="This is not a P3P policy! See g.co/p3phelp for more info."
date: Mon, 22 Feb 2021 03:37:48 GMT
server: gws
x-xss-protection: 0
x-frame-options: SAMEORIGIN
expires: Mon, 22 Feb 2021 03:37:48 GMT
cache-control: private
set-cookie: 1P_JAR=2021-02-22-03; expires=Wed, 24-Mar-2021 03:37:48 GMT; path=/; domain=.google.com; Secure
set-cookie: NID=209=keRhu5YmYjG3KydSQMkOPgY5OlFgxgl5fBBaIJrmFg1nLsigSw4hMhfapYfegoBHq_xYztQ-ck3QNA3lTCvzN92g1xvBM6Q-Ohonj_mawT2I4bqOOrsA7vd7Cr2Dlu2Tnjc1S7d97EyzFgFjxIhqIArSMr3rOgC-liPuW1rnVAo; expires=Tue, 24-Aug-2021 03:37:48 GMT; path=/; domain=.google.com; HttpOnly
alt-svc: h3-29=":443"; ma=2592000,h3-T051=":443"; ma=2592000,h3-Q050=":443"; ma=2592000,h3-Q046=":443"; ma=2592000,h3-Q043=":443"; ma=2592000,quic=":443"; ma=2592000; v="46,43"

