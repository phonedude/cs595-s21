## Assignment 3, CS 495/595 Web Security, Spring 2021

Due: 2021-03-04

Points available: 15

### Cookie report for 100 of the Mozilla top 500 web sites

* In [Nelson/3](https://github.com/phonedude/cs595-s21/tree/main/assignments/Nelson/3), I've included [Mozilla's Top 500 Sites](https://moz.com/top500).  Also, I've include the 100 unique, random sites drawn from that sample that are assigned to each student.  Check the text file with your email address.  You must only do the 100 sites that are assigned to you.  

* Your README.md will be a report about the cookie practices of those 100 sites.  The report will primarily contain a giant table summarizing the 100 sites:
  * The terminating status codes for each site.  Note this is the final status code, not the 301s, 302, etc. that you may encounter on your way to the final status code.  More on that below.  
  * For each site, the number of different cookies that are set.  Keep in mind that each HTTP reponse can have multiple "Set-Cookie:" headers.  
  * For each cookie, extract the attributes: HttpOnly, Secure, SameSite (and the corresponding policy), Path (and the corresponding value).  With this data you will answer:
    * How many cookies set HttpOnly?  
    * How many cookies set Secure?  
    * How many cookies set SameSite?  For those that set SameSite, how many are Strict?  How many are Lax?  How many are None?
    * How many cookies set a Path?  How many of those are values other than "/"?

* Summarizing the entire table, what are the Min/Max/Mean/Median number of cookies for the 100 sites?

### Set up directory "3"

All of the code, scripts, files, HTTP responses, images, etc. you created to do this assignment will be uploaded into directory "3".  When in doubt, ask me on the class email list or just upload it.  You absolutely must include the HTTP responses as part of your submission.  But all of the data that I will read to grade your assignment will be contained in README.md; I will not open separate .pdf, .ppt, etc. files.  The purpose of this is to encourage you to develop good markdown skills for natively documenting your work in GitHub.  

### Scripting your work

Furthermore, the purpose of this assignment is to encourage you to learn to script your work for large-scale analysis.  You are free to write your analysis code/scripts in any language that you prefer.  If you attempt to do this analysis by hand, you'll run out of time. 

### Additional considerations

* Use the "-k" (or --insecure) flag to tell curl to accept invalid SSL certificates.  These are surpringly common.  For example, the certificate for odu.edu is invalid, so the request without "-k" stops on the invalid cert.  Using "-k" causes curl to issue the request regardless:

```
$ curl -IL odu.edu
HTTP/1.0 301 Moved Permanently
Location: https://odu.edu/
Server: BigIP
Connection: Keep-Alive
Content-Length: 0

curl: (60) SSL certificate problem: Invalid certificate chain
More details here: http://curl.haxx.se/docs/sslcerts.html

curl performs SSL certificate verification by default, using a "bundle"
 of Certificate Authority (CA) public keys (CA certs). If the default
 bundle file isn't adequate, you can specify an alternate file
 using the --cacert option.
If this HTTPS server uses a certificate signed by a CA represented in
 the bundle, the certificate verification probably failed due to a
 problem with the certificate (it might be expired, or the name might
 not match the domain name in the URL).
If you'd like to turn off curl's verification of the certificate, use
 the -k (or --insecure) option.
$ curl -ILk odu.edu
HTTP/1.0 301 Moved Permanently
Location: https://odu.edu/
Server: BigIP
Connection: Keep-Alive
Content-Length: 0

HTTP/1.1 200 OK
Date: Mon, 15 Feb 2021 15:53:53 GMT
Server: Apache/2.4.6 (Red Hat Enterprise Linux)
Vary: Host
Accept-Ranges: bytes
Connection: close
Content-Type: text/html; charset=UTF-8
Set-Cookie: BIGipServerWEB_HTTPS_PROD.app~WEB_HTTPS_PROD_pool_int=rd741o00000000000000000000ffff8052619eo80; path=/; Httponly; Secure

```

For some scenarios we should be more paranoid about invalid certs, but for this assignment we will just accept them.  

* The response below is not a terminal (final) response; it is a redirect that you must follow:

```
$ curl -Ik cdc.gov
HTTP/1.0 302 Moved Temporarily
Location: https://cdc.gov/
Server: BigIP
Connection: Keep-Alive
Content-Length: 0
```

You follow redirects with the "-L" (for "Location:") flag.  Also, the "-s" (silent) flag will hide the progress information.  You'll want to redirect the output of the response to a file and then analyze that file, not analyze the live web each time.  

```
$ curl -ILsk cdc.gov > cdc.gov.txt
$ cat cdc.gov.txt 
HTTP/1.0 302 Moved Temporarily
Location: https://cdc.gov/
Server: BigIP
Connection: Keep-Alive
Content-Length: 0

HTTP/1.1 301 Moved Permanently
Content-Length: 143
Content-Type: text/html; charset=UTF-8
Location: https://www.cdc.gov/
Strict-Transport-Security: max-age=31536000; includeSubDomains
SRV: 6
Access-Control-Allow-Origin: *
X-UA-Compatible: IE=edge
Date: Mon, 15 Feb 2021 00:44:50 GMT
Connection: close
Set-Cookie: TS01b4334d=012409b3530ca4e082580a63d4eedcea7885510345b9aaaca65f414fd1f8944edd474675f5e553fa6fc97a42aaade6b3f32ad3e261; Path=/; Domain=.cdc.gov

HTTP/1.0 200 OK
Content-Type: text/html
SRV: 2
Access-Control-Allow-Origin: *
X-UA-Compatible: IE=edge
Date: Mon, 15 Feb 2021 00:44:51 GMT
Connection: close
Strict-Transport-Security: max-age=31536000 ; includeSubDomains ; preload
```

In the above example, note that the cookie was set on the redirect, not the 200.

* Not all responses will terminate in a 200:

```
$ curl -Ik bp3.blogger.com
HTTP/1.1 400 Bad Request
Vary: Origin
Access-Control-Allow-Origin: *
Timing-Allow-Origin: *
Content-Type: text/html; charset=UTF-8
X-Content-Type-Options: nosniff
Date: Mon, 15 Feb 2021 00:25:20 GMT
Server: fife
Content-Length: 1555
X-XSS-Protection: 0
```

In the above case, the terminating response is "HTTP 400" and no cookies are set.  

* All curl requests should use the HEAD method ("-I" or "--head").  Some servers will [behave differently](http://arxiv.org/abs/1405.2330) for HEAD vs. GET.  For this assignment, it is sufficient to document their HEAD behavior.  For example, ebay.com is ill-behaved on HEAD requests, entering a redirect loop that curl will eventually quit after 50 redirects (the last 20 lines of the file are shown below):

```
% curl -ILsk ebay.com | tail -20
x-frame-options: SAMEORIGIN
location: http://pages.ebay.com/messages/page_not_responding.html
content-length: 0
rlogid: undefined
x-envoy-upstream-service-time: 12
server: ebay-proxy-server
x-ebay-pop-id: UFES2-MRS-dweb-www2
date: Mon, 15 Feb 2021 15:32:46 GMT

HTTP/1.1 301 Moved Permanently
Location: https://pages.ebay.com/messages/page_not_responding.html

HTTP/1.1 301 Moved Permanently
RlogId: t6fug%60f%3F%3Cumjcwbbc*7t%7C%7Fs%28rbpv6710-177a652986a-0xfa
Last-Modified: Mon, 15 Feb 2021 15:30:51 GMT
location: https://www.ebay.com/n/error?statuscode=500
Content-Length: 0
Date: Mon, 15 Feb 2021 15:32:46 GMT
Server: ebay server

```

In this case, it is acceptable to say the final status code is 301.  Note that ebay.com behaves correctly with the GET method:

```
% curl -isLk ebay.com | head -25
HTTP/1.1 301 Moved Permanently
Location: https://www.ebay.com/

HTTP/2 200 
x-content-type-options: nosniff
strict-transport-security: max-age=31536000
x-xss-protection: 1; mode=block
x-frame-options: SAMEORIGIN
content-security-policy: default-src 'self' blob: wss: data: https:; img-src 'self' data: https:; script-src 'self' 'unsafe-eval' 'unsafe-inline' blob: data: https:; style-src 'self' 'unsafe-inline' data: https:;
content-type: text/html;charset=utf-8
rlogid: t6klaook%60b0%3D%3C%3Dqkiojbnkmcc4%3B(0k4bj*w%60ut3541-177a6544a9d-0x2806
x-envoy-upstream-service-time: 57
server: ebay-proxy-server
x-ebay-pop-id: UFES2-MRS-dweb-www2
x-edgeconnect-midmile-rtt: 28
x-edgeconnect-origin-mex-latency: 186
date: Mon, 15 Feb 2021 15:34:38 GMT
set-cookie: dp1=bbl/US63ecfb8d^; Domain=.ebay.com; Path=/; Expires=Wed, 15 Feb 2023 15:34:38 GMT; Secure
set-cookie: nonsession=BAQAAAXYrDFi8AAaAADMABWILyA0yMzUyOQDKACBj7PuNYTY1NDRhYTgxNzcwYTRkNGVkMzQwOGE4ZmZiMGZlOTcAywABYCqblTG/1Ca1Y8qysufLr62/WYIG2ZwY7w**; Domain=.ebay.com; Path=/; Expires=Wed, 15 Feb 2023 15:34:38 GMT; Secure
set-cookie: s=CgAD4ACBgK+YNYTY1NDRhYTgxNzcwYTRkNGVkMzQwOGE4ZmZiMGZlOTfeRClV; Domain=.ebay.com; Path=/; HttpOnly; Secure
set-cookie: ebay=%5Esbf%3D%23000000%5E; Domain=.ebay.com; Path=/

<!DOCTYPE html><!--[if IE 9 ]>    <html class="ie9"> <![endif]--><!--[if (gt IE 9)|!(IE)]><!--><html lang=en><!--<![endif]--><head><style>
    .font-marketsans body {
        font-family: "Market Sans", Arial, sans-serif;
```

Resolving server's HEAD vs. GET behavior is outside of the scope for this class; just report on HEAD.  Also note that authenticated (i.e., "logged in") sessions with a "regular" user-agent (e.g., Chrome, FireFox) would typically result in far more cookies for each site.  You can open your developer tools for own browser and inspect the cookies for google.com, ebay.com, amazon.com, etc.  The purpose of this assignment is just to familiarize you with the cookies on the initial, unauthenticated requests.


### Extra Credit -- 2 points

* The title of slide 60 in week 5 is a literary reference.  Describe and link to the work that Feross is referencing with this title.
