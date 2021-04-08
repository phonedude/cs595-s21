HTTP/1.1 301 Moved Permanently
Date: Thu, 01 Apr 2021 16:20:54 GMT
Connection: keep-alive
Cache-Control: max-age=3600
Expires: Thu, 01 Apr 2021 17:20:54 GMT
Location: https://www.thedailybeast.com/
cf-request-id: 092fd5eaab0000c08435a2b000000001
Server: cloudflare
CF-RAY: 639325bddf56c084-ORF

HTTP/2 200 
date: Thu, 01 Apr 2021 16:20:54 GMT
content-length: 0
set-cookie: __cfduid=d2f2449a41b6866dbf4eeff660ec4e84d1617294054; expires=Sat, 01-May-21 16:20:54 GMT; path=/; domain=.thedailybeast.com; HttpOnly; SameSite=Lax
cf-ray: 639325becac4c070-ORF
set-cookie: __tdbbrowser=87422f00-9c8b-4edb-a62e-9a2bc8f024a9; path=/; expires=Sun, 30 Mar 2031 16:20:54 GMT; samesite=lax; httponly
strict-transport-security: max-age=15552000; includeSubDomains
cf-cache-status: DYNAMIC
cf-request-id: 092fd5eb420000c070d9126000000001
expect-ct: max-age=604800, report-uri="https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct"
set-cookie: __tdbbrowser.sig=h0F3TBievDmsstksqbljXJTVwIA; path=/; expires=Sun, 30 Mar 2031 16:20:54 GMT; samesite=lax; httponly
set-cookie: kppid=mOa64Wg9jru; path=/; expires=Tue, 28 Sep 2021 16:20:54 GMT; domain=thedailybeast.com
set-cookie: kppid.sig=m2qLseFteC_GT-w8GYILdCPj-XE; path=/; expires=Tue, 28 Sep 2021 16:20:54 GMT; domain=thedailybeast.com
set-cookie: __tdbsesh=eyJub3dJbk1pbnV0ZXMiOjI2OTU0OTAwLCJzZXNzaW9uSWQiOiIwMWU2MGFmNC1mNGM2LTQ2YTktYTZmMC1iZjU2NjgzYmZiOTkiLCJkZnBCdWNrZXRJZCI6NH0=; path=/; expires=Thu, 01 Apr 2021 16:50:54 GMT; samesite=lax; httponly
set-cookie: __tdbsesh.sig=GtiH1t8H5Pf8a-9qlHVFeHVIXYY; path=/; expires=Thu, 01 Apr 2021 16:50:54 GMT; samesite=lax; httponly
x-content-type-options: nosniff
x-dns-prefetch-control: off
x-download-options: noopen
x-frame-options: SAMEORIGIN
x-powered-by: Express
x-tdb-cache-scope: rev:22.4.312:gbp:desktop
x-tdb-deployment: 22.4.312
x-tdb-host: prod-tdb-7d968bb77-mwsfk
x-tdb-revision: db31fb7911ee43158a08be693fb19c451f592501
x-xss-protection: 1; mode=block
server: cloudflare

