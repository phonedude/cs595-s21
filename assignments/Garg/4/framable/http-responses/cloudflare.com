HTTP/1.1 301 Moved Permanently
Date: Thu, 01 Apr 2021 16:19:02 GMT
Connection: keep-alive
Cache-Control: max-age=3600
Expires: Thu, 01 Apr 2021 17:19:02 GMT
Location: https://www.cloudflare.com/
cf-request-id: 092fd436670000c093bf1e6000000001
Set-Cookie: __cf_bm=d2db08212605ece69fae64addc0d3c7ccd353de7-1617293942-1800-AQXnnqCXbTHzwho6QI3+P+xt0MdFKtPcfmuo/AgbU/XS95RW6UqS4naRa+JnLv7fDeMqltbxyH+/80/V35iRYPg=; path=/; expires=Thu, 01-Apr-21 16:49:02 GMT; domain=.cloudflare.com; HttpOnly; SameSite=None
Report-To: {"max_age":604800,"group":"cf-nel","endpoints":[{"url":"https:\/\/a.nel.cloudflare.com\/report?s=3Rl77latJVMQegW%2FGr9WMkTCadxvu75Fzf5aPcnntsSTMtSLBZZKyPBdTj4X5WEvsUagw7%2FWcfzylXGpdI7uoFfEDFk%2FtTTHoygBxJGGBRBKQ1iJpVDhD1606w%3D%3D"}]}
NEL: {"report_to":"cf-nel","max_age":604800}
Server: cloudflare
CF-RAY: 63932303dd8ec093-ORF
alt-svc: h3-27=":443"; ma=86400, h3-28=":443"; ma=86400, h3-29=":443"; ma=86400

HTTP/2 200 
date: Thu, 01 Apr 2021 16:19:02 GMT
content-type: text/html; charset=utf-8
set-cookie: __cfduid=d95ee2a6dc4a13526c5cf92ea2ed0c5481617293942; expires=Sat, 01-May-21 16:19:02 GMT; path=/; domain=.www.cloudflare.com; HttpOnly; SameSite=Lax; Secure
cache-control: max-age=120
strict-transport-security: max-age=31536000
x-content-type-options: nosniff
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
cf-request-id: 092fd436f40000c070cc9b6000000001
expect-ct: max-age=604800, report-uri="https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct"
set-cookie: __cf_bm=9582595057835fc5629f8d6055f28cf4746109c5-1617293942-1800-AQdZ7ADzQrXLu7Ss0xdTKr4iyhJI6H0REeLKV6Rhl+rAo+j1b7Q51TXWjy0difLM79tZkAIQWZqtjO1hvwmMJpupQ/geGdYDKFYBoVgRgGQJ; path=/; expires=Thu, 01-Apr-21 16:49:02 GMT; domain=.www.cloudflare.com; HttpOnly; Secure; SameSite=None
report-to: {"max_age":604800,"group":"cf-nel","endpoints":[{"url":"https:\/\/a.nel.cloudflare.com\/report?s=sBTFDH0rF3QCoLkdEPmyNjIO3DyWXjDScmcuEHLb6z8Ztb%2BSh4Y7Y6pOw9jhfnkYX%2FZrfADRYhFzdad9KXCmKAWLHp3d0uv7QiN2S5ZVND%2B%2FoAGlDpX8dRPA327r0q0%3D"}]}
nel: {"report_to":"cf-nel","max_age":604800}
server: cloudflare
cf-ray: 63932304bedfc070-ORF
alt-svc: h3-27=":443"; ma=86400, h3-28=":443"; ma=86400, h3-29=":443"; ma=86400

