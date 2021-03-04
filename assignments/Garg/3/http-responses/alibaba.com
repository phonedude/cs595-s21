HTTP/1.1 301 Moved Permanently
Server: Tengine
Date: Mon, 22 Feb 2021 03:37:18 GMT
Content-Type: text/html
Content-Length: 239
Connection: keep-alive
Location: https://alibaba.com/
Timing-Allow-Origin: *
EagleId: 0bb40d5216139650380623441ee2df
server-timing: rt;dur=0.000,eagleid;desc=0bb40d5216139650380623441ee2df

HTTP/2 301 
date: Mon, 22 Feb 2021 03:37:19 GMT
content-type: text/html
content-length: 278
location: https://www.alibaba.com/?__redirected__=1
server: Tengine
set-cookie: ali_apache_id=11.227.118.23.161396503989.444082.5; path=/; domain=.alibaba.com; expires=Wed, 30-Nov-2084 01:01:01 GMT
strict-transport-security: max-age=31536000
timing-allow-origin: *
eagleid: 0be3761716139650390886643edebb
server-timing: rt;dur=0.001,eagleid;desc=0be3761716139650390886643edebb

HTTP/2 200 
content-type: text/html;charset=UTF-8
server: Apache-Coyote/1.1
p3p: CP="CAO PSA OUR"
cache-control: s-maxage=3600
resin-trace: ali_resin_trace=aisn_homepage_version=null|septemberPromotion=null
content-language: en-US
strict-transport-security: max-age=31536000
strict-transport-security: max-age=31536000
timing-allow-origin: *
eagleid: 0b565e5a16139644053314338e668b
server-timing: rt;dur=0.345,eagleid;desc=0b565e5a16139644053314338e668b
date: Mon, 22 Feb 2021 03:37:19 GMT
object-status: ttl=3600,age=634
edge-type: akamai

