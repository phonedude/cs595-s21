HTTP/1.1 301 Moved Permanently
Date: Mon, 22 Feb 2021 03:37:29 GMT
Connection: keep-alive
Cache-Control: max-age=3600
Expires: Mon, 22 Feb 2021 04:37:29 GMT
Location: https://www.cloudflare.com/
cf-request-id: 08696958740000c08eac211000000001
Set-Cookie: __cf_bm=1706c0a17ef9dd499b33440fac8d9e6b15e03581-1613965049-1800-Aab1p2c2OQ7UpKA6+Bw2YuXleQUtKwfgDtDPA8bIrV3VB86JvmP4GEWmaQvmMjGRLN03+4pRyG8fNrF4xl/Mt+I=; path=/; expires=Mon, 22-Feb-21 04:07:29 GMT; domain=.cloudflare.com; HttpOnly; SameSite=None
Report-To: {"group":"cf-nel","endpoints":[{"url":"https:\/\/a.nel.cloudflare.com\/report?s=7RoUSpUfhlnKegehRqeuShGt2JRgIFPIII1AesN2BkwNnFLwZvTHwkBga6Pqz17pEw%2BCAlztmfKXSuWAlbciaYK7zsHz7Wbeb%2BdgL%2FxY8xKVLhwXczBpHjBWSg%3D%3D"}],"max_age":604800}
NEL: {"report_to":"cf-nel","max_age":604800}
Server: cloudflare
CF-RAY: 6255ab3a5d4cc08e-ORF
alt-svc: h3-27=":443"; ma=86400, h3-28=":443"; ma=86400, h3-29=":443"; ma=86400

HTTP/2 200 
date: Mon, 22 Feb 2021 03:37:30 GMT
content-type: text/html; charset=utf-8
set-cookie: __cfduid=d7434285406f84be952ef3253b52fbf9a1613965050; expires=Wed, 24-Mar-21 03:37:30 GMT; path=/; domain=.www.cloudflare.com; HttpOnly; SameSite=Lax; Secure
cf-ray: 6255ab3b49edc066-ORF
cache-control: public, max-age=30
strict-transport-security: max-age=31536000
vary: Accept-Encoding
cf-cache-status: EXPIRED
cf-request-id: 08696959110000c0668b92c000000001
expect-ct: max-age=604800, report-uri="https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct"
x-content-type-options: nosniff
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
set-cookie: __cf_bm=5d22492ed295935af57800a8940f98b28f91ea42-1613965050-1800-ASN4EDDTq6OS5q6g7yfu7CDY+/89o+m6Imah8NXAOAyVtIoKuH8m5pc7UFBXGO4fqg==; path=/; expires=Mon, 22-Feb-21 04:07:30 GMT; domain=.www.cloudflare.com; HttpOnly; Secure; SameSite=None
set-cookie: __cflb=02DiuJFZNR1vT983reJ7dGD57ieW7F4Q8MyvsBVa3n4Sg; SameSite=Lax; path=/; expires=Tue, 23-Feb-21 02:37:30 GMT; HttpOnly
set-cookie: __cf_bm=ebb5d18a9107615e935da293e43c9c7f0c2e0432-1613965050-1800-ASiBd8TCfKLiHJQGMzbncP0BLcW7mamu9iLje2XIzYWrGkKsLHgu5HGVbuVx38kD86rUnz9rJT7EfCilzZQ0BVPW1Unu0fZNnE++va2usASM; path=/; expires=Mon, 22-Feb-21 04:07:30 GMT; domain=.www.cloudflare.com; HttpOnly; Secure; SameSite=None
report-to: {"group":"cf-nel","endpoints":[{"url":"https:\/\/a.nel.cloudflare.com\/report?s=Psg1HYf29HEjkSKM6mcHZBfGOL4P1EPgofCQ2LpMXxsU3SdK9YV49HXfWJuy5%2FIKrSJnQMXjiWISeJl048buZZTZbAMuHQgpaC6Yvs7hJP6HmLWjcwzPdw%2F4Upt%2BpHg%3D"}],"max_age":604800}
nel: {"report_to":"cf-nel","max_age":604800}
server: cloudflare
alt-svc: h3-27=":443"; ma=86400, h3-28=":443"; ma=86400, h3-29=":443"; ma=86400

