HTTP/1.1 301 Moved Permanently
Date: Mon, 22 Feb 2021 03:56:47 GMT
Connection: keep-alive
Cache-Control: max-age=3600
Expires: Mon, 22 Feb 2021 04:56:47 GMT
Location: https://www.thedailybeast.com/
cf-request-id: 08697b02ba0000c08ebc3e2000000001
Server: cloudflare
CF-RAY: 6255c77dfdb0c08e-ORF

HTTP/2 200 
date: Mon, 22 Feb 2021 03:56:47 GMT
content-length: 0
set-cookie: __cfduid=d25b4f26499fff3aa533f58bff6caf00b1613966207; expires=Wed, 24-Mar-21 03:56:47 GMT; path=/; domain=.thedailybeast.com; HttpOnly; SameSite=Lax
cf-ray: 6255c77ecbf4c066-ORF
set-cookie: __tdbbrowser=ff3b316b-6613-42ae-b523-d7e4d8d80642; path=/; expires=Thu, 20 Feb 2031 03:56:47 GMT; samesite=lax; httponly
strict-transport-security: max-age=15552000; includeSubDomains
cf-cache-status: DYNAMIC
cf-request-id: 08697b033a0000c0669890d000000001
expect-ct: max-age=604800, report-uri="https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct"
set-cookie: __tdbbrowser.sig=T89MKKVRCJbupSzvQX1PVJr-at4; path=/; expires=Thu, 20 Feb 2031 03:56:47 GMT; samesite=lax; httponly
set-cookie: kppid=a5bxU35txcp; path=/; expires=Sat, 21 Aug 2021 03:56:47 GMT; domain=thedailybeast.com
set-cookie: kppid.sig=99VNrfwpffZ0QCQxj5mbI2qkahU; path=/; expires=Sat, 21 Aug 2021 03:56:47 GMT; domain=thedailybeast.com
set-cookie: __tdbsesh=eyJub3dJbk1pbnV0ZXMiOjI2ODk5NDM2LCJzZXNzaW9uSWQiOiI0ODdlZjI0My1hODViLTQ4YWItYWI2My1iMmFkNDU2MjVlZDQiLCJkZnBCdWNrZXRJZCI6MTR9; path=/; expires=Mon, 22 Feb 2021 04:26:47 GMT; samesite=lax; httponly
set-cookie: __tdbsesh.sig=J04k4IkMPGPRLixsIzFU5INGfX8; path=/; expires=Mon, 22 Feb 2021 04:26:47 GMT; samesite=lax; httponly
x-content-type-options: nosniff
x-dns-prefetch-control: off
x-download-options: noopen
x-frame-options: SAMEORIGIN
x-powered-by: Express
x-tdb-cache-scope: rev:22.4.276:gbp:desktop
x-tdb-deployment: 22.4.276
x-tdb-host: prod-tdb-7789d78668-5dx79
x-tdb-revision: fcf1753cbcfb6c29751056622589f85dc22ddebd
x-xss-protection: 1; mode=block
server: cloudflare

