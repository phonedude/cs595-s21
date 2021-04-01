HTTP/1.1 301 Moved Permanently
Date: Thu, 01 Apr 2021 16:19:15 GMT
Connection: keep-alive
Server: ATS
Cache-Control: no-store
Content-Type: text/html
Content-Language: en
X-Frame-Options: DENY
X-Content-Type-Options: nosniff
Referrer-Policy: strict-origin-when-cross-origin
Content-Security-Policy: sandbox allow-scripts; default-src 'self'; img-src https:; style-src 'unsafe-inline'; script-src 'unsafe-inline'; report-uri http://csp.yahoo.com/beacon/csp?src=redirect
Location: https://www.engadget.com/
Content-Length: 4371

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
set-cookie: BX=9vb6091g6bsk4&b=3&s=vt; expires=Thu, 01-Apr-2022 16:19:16 GMT; path=/; domain=.engadget.com
date: Thu, 01 Apr 2021 16:19:16 GMT
x-envoy-upstream-service-time: 201
server: ATS
age: 0

