HTTP/1.1 301 Moved Permanently
Date: Mon, 22 Feb 2021 03:37:45 GMT
P3P: policyref="https://policies.yahoo.com/w3c/p3p.xml", CP="CAO DSP COR CUR ADM DEV TAI PSA PSD IVAi IVDi CONi TELo OTPi OUR DELi SAMi OTRi UNRi PUBi IND PHY ONL UNI PUR FIN COM NAV INT DEM CNT STA POL HEA PRE LOC GOV"
Cache-Control: max-age=3600, public
Location: https://www.engadget.com/
Content-Type: text/html; charset=UTF-8
Age: 0
Connection: keep-alive
Server: ATS
X-Frame-Options: DENY
X-Content-Type-Options: nosniff
Referrer-Policy: strict-origin-when-cross-origin
Content-Security-Policy: sandbox allow-scripts; default-src 'self'; img-src https:; style-src 'unsafe-inline'; script-src 'unsafe-inline'; report-uri http://csp.yahoo.com/beacon/csp?src=redirect

HTTP/2 200 
expect-ct: max-age=31536000, report-uri="http://csp.yahoo.com/beacon/csp?src=yahoocom-expect-ct-report-only"
referrer-policy: no-referrer-when-downgrade
strict-transport-security: max-age=31536000
x-content-type-options: nosniff
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
content-security-policy: default-src 'self' 'unsafe-inline' 'unsafe-eval' data: https: https://sb.scorecardresearch.com blob: wss:; sandbox allow-forms allow-same-origin allow-scripts allow-popups allow-popups-to-escape-sandbox allow-top-navigation-by-user-activation allow-presentation; img-src 'self' https: data: blob:; object-src https://*.engadget.com https://s.yimg.com; worker-src 'self' blob:; manifest-src 'self' https://s.yimg.com; font-src 'self' data: https://www.engadget.com https://s.yimg.com https://fonts.gstatic.com https://*.spot.im; connect-src 'self' https://*.engadget.com https://s.yimg.com https://*.yahoo.net https://*.yahoo.com https://*.oath.com https://*.advertising.com https://*.cdn.yimg.com https://ad.doubleclick.net https://*.doubleverify.com https://*.googlesyndication.com https://*.spot.im https://*.giphy.com https://*.vidible.com https://*.media.yahoo.com:4443 https://*.skimresources.com https://*.taboola.com https://securepubads.g.doubleclick.net https://*.spotim.market https://*.criteo.com https://*.criteo.net https://*.pubmatic.com https://*.rubiconproject.com https://*.lijit.com https://*.gumgum.com https://*.openx.net https://*.adtelligent.com https://*.casalemedia.com https://*.creativecdn.com https://*.adnxs.com https://*.nighttstand.com https://*.rlcdn.com https://*.adsrvr.org https://*.adform.net https://*.vidible.tv https://*.uplynk.com https://*.edgekey.net https://*.doubleclick.net https://d1z2jf7jlzjs58.cloudfront.net https://*.pixel.parsely.com https://*.aniview.com https://*.ad-score.com; upgrade-insecure-requests; block-all-mixed-content; report-uri https://csp.yahoo.com/beacon/csp?src=engadget; report-to csp-endpoint;
report-to: {"group":"csp-endpoint","max-age":10886400,"endpoints":[{"url":"https://csp.yahoo.com/beacon/csp?src=engadget"}]}
content-type: text/html; charset=utf-8
vary: Accept-Encoding
set-cookie: BX=1dofej9g369oa&b=3&s=9o; expires=Mon, 22-Feb-2022 03:37:46 GMT; path=/; domain=.engadget.com
date: Mon, 22 Feb 2021 03:37:46 GMT
x-envoy-upstream-service-time: 186
server: ATS
age: 0

