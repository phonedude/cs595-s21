HTTP/1.1 301 Moved Permanently
Server: Tengine
Date: Thu, 01 Apr 2021 16:18:52 GMT
Content-Type: text/html
Content-Length: 239
Connection: keep-alive
Location: https://alibaba.com/
Timing-Allow-Origin: *
EagleId: 0be3752c16172939322388487e2b5b
server-timing: rt;dur=0.000,eagleid;desc=0be3752c16172939322388487e2b5b

HTTP/2 301 
date: Thu, 01 Apr 2021 16:18:52 GMT
content-type: text/html
content-length: 278
location: https://www.alibaba.com/?__redirected__=1
server: Tengine
set-cookie: ali_apache_id=11.227.118.126.1617293932837.443704.3; path=/; domain=.alibaba.com; expires=Wed, 30-Nov-2084 01:01:01 GMT
strict-transport-security: max-age=31536000
timing-allow-origin: *
eagleid: 0be3767e16172939328364281efe73
server-timing: rt;dur=0.002,eagleid;desc=0be3767e16172939328364281efe73

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
eagleid: 0b15a62c16172935976063521ee997
server-timing: rt;dur=0.235,eagleid;desc=0b15a62c16172935976063521ee997
date: Thu, 01 Apr 2021 16:18:52 GMT
object-status: ttl=3600,age=335
edge-type: akamai

