HTTP/1.1 302 Moved Temporarily
Content-Type: text/html; charset=UTF-8
Location: https://accounts.google.com/
Content-Length: 210
Date: Thu, 01 Apr 2021 16:18:51 GMT
Expires: Thu, 01 Apr 2021 16:18:51 GMT
Cache-Control: private, max-age=0
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
Content-Security-Policy: frame-ancestors 'self'
X-XSS-Protection: 1; mode=block
Server: GSE

HTTP/2 302 
content-type: text/html; charset=UTF-8
strict-transport-security: max-age=31536000; includeSubDomains
x-frame-options: DENY
content-security-policy: script-src 'nonce-/Yniq1G1TIvl/S2Pc1peUg' 'unsafe-inline' 'unsafe-eval';object-src 'none';base-uri 'self';report-uri /cspreport
location: https://accounts.google.com/ServiceLogin?passive=1209600&continue=https%3A%2F%2Faccounts.google.com%2F&followup=https%3A%2F%2Faccounts.google.com%2F
content-length: 338
date: Thu, 01 Apr 2021 16:18:51 GMT
expires: Thu, 01 Apr 2021 16:18:51 GMT
cache-control: private, max-age=0
x-content-type-options: nosniff
x-xss-protection: 1; mode=block
server: GSE
set-cookie: __Host-GAPS=1:D1FUQjP2qxNF-G09EhT4pHYxdg5jZQ:UHic1VvxYKb63Hws;Path=/;Expires=Sat, 01-Apr-2023 16:18:51 GMT;Secure;HttpOnly;Priority=HIGH
alt-svc: h3-29=":443"; ma=2592000,h3-T051=":443"; ma=2592000,h3-Q050=":443"; ma=2592000,h3-Q046=":443"; ma=2592000,h3-Q043=":443"; ma=2592000,quic=":443"; ma=2592000; v="46,43"

HTTP/2 200 
content-type: text/html; charset=UTF-8
x-frame-options: DENY
x-auto-login: realm=com.google&args=continue%3Dhttps%253A%252F%252Faccounts.google.com%252F
cache-control: no-cache, no-store, max-age=0, must-revalidate
pragma: no-cache
expires: Mon, 01 Jan 1990 00:00:00 GMT
date: Thu, 01 Apr 2021 16:18:52 GMT
content-length: 71108
strict-transport-security: max-age=31536000; includeSubDomains
content-security-policy: script-src 'nonce-Q0r9j2ZK6ERZ9YcsXvZUNQ' 'unsafe-inline' 'unsafe-eval';object-src 'none';base-uri 'self';report-uri /cspreport
x-content-type-options: nosniff
x-xss-protection: 1; mode=block
server: GSE
set-cookie: __Host-GAPS=1:mE9VZCykuhm_eFwHIUBI-9sraKhZkw:G-2rzn73fjqhuAOR;Path=/;Expires=Sat, 01-Apr-2023 16:18:52 GMT;Secure;HttpOnly;Priority=HIGH
alt-svc: h3-29=":443"; ma=2592000,h3-T051=":443"; ma=2592000,h3-Q050=":443"; ma=2592000,h3-Q046=":443"; ma=2592000,h3-Q043=":443"; ma=2592000,quic=":443"; ma=2592000; v="46,43"

