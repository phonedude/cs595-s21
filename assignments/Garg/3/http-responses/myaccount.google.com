HTTP/1.1 301 Moved Permanently
Content-Type: application/binary
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Pragma: no-cache
Expires: Mon, 01 Jan 1990 00:00:00 GMT
Date: Mon, 22 Feb 2021 03:39:03 GMT
Location: https://myaccount.google.com/
Content-Length: 0
P3P: CP="This is not a P3P policy! See g.co/p3phelp for more info."
Server: ESF
X-XSS-Protection: 0
X-Frame-Options: SAMEORIGIN
X-Content-Type-Options: nosniff
Set-Cookie: NID=209=nNRGV0-ndWpfZarDCELJIpG72lRelDBMZ_TP3UY283TeKl8s2-PSkJIYkUg0FQpVUujOul6UO13X1EUXNtdgi13OoLskWaHZANaLz14CgoZcsd0jaV-udwEV2N78XLfDPI3PH6bc5JmgXvQrBsGiEoOAkzcxQV8BlfZ-r_ctGNM; expires=Tue, 24-Aug-2021 03:39:03 GMT; path=/; domain=.google.com; HttpOnly

HTTP/2 302 
content-type: application/binary
cache-control: no-cache, no-store, max-age=0, must-revalidate
pragma: no-cache
expires: Mon, 01 Jan 1990 00:00:00 GMT
date: Mon, 22 Feb 2021 03:39:03 GMT
location: https://myaccount.google.com/intro
content-length: 0
p3p: CP="This is not a P3P policy! See g.co/p3phelp for more info."
strict-transport-security: max-age=31536000
server: ESF
x-xss-protection: 0
x-frame-options: SAMEORIGIN
x-content-type-options: nosniff
set-cookie: NID=209=YoRRZuKtIJxqXUYosej8i0_4xFekd1_jLa8lCj1AUN_cxZQaSkW74C3g9iyxnoNUaIdYa8B2qDjmo9-rmwP9vtwLorBqBaGfRbWp7YW0WBlpjvsd6aDIEQqgWES6BOGDakuNqVL3UtG-0frrnVpWGwfYOmGUvU_blIeWChNPUWY; expires=Tue, 24-Aug-2021 03:39:03 GMT; path=/; domain=.google.com; HttpOnly
alt-svc: h3-29=":443"; ma=2592000,h3-T051=":443"; ma=2592000,h3-Q050=":443"; ma=2592000,h3-Q046=":443"; ma=2592000,h3-Q043=":443"; ma=2592000,quic=":443"; ma=2592000; v="46,43"

HTTP/2 302 
content-type: application/binary
vary: Sec-Fetch-Dest, Sec-Fetch-Mode, Sec-Fetch-Site
cache-control: no-cache, no-store, max-age=0, must-revalidate
pragma: no-cache
expires: Mon, 01 Jan 1990 00:00:00 GMT
date: Mon, 22 Feb 2021 03:39:03 GMT
location: https://www.google.com/account/about/?hl=en-US
content-length: 0
p3p: CP="This is not a P3P policy! See g.co/p3phelp for more info."
strict-transport-security: max-age=31536000
cross-origin-resource-policy: same-site
content-security-policy: script-src 'nonce-odRzEdMG5iJZ7Qq9TPjAPA' 'unsafe-inline' 'unsafe-eval';object-src 'none';base-uri 'self';report-uri /_/AccountSettingsUi/cspreport;worker-src 'self'
link: <https://myaccount.google.com/intro>; rel="alternate"; hreflang="x-default", <https://myaccount.google.com/intro?hl=en-US>; rel="alternate"; hreflang="en-US", <https://myaccount.google.com/intro?hl=af>; rel="alternate"; hreflang="af", <https://myaccount.google.com/intro?hl=am>; rel="alternate"; hreflang="am", <https://myaccount.google.com/intro?hl=ar>; rel="alternate"; hreflang="ar", <https://myaccount.google.com/intro?hl=as>; rel="alternate"; hreflang="as", <https://myaccount.google.com/intro?hl=az>; rel="alternate"; hreflang="az", <https://myaccount.google.com/intro?hl=be>; rel="alternate"; hreflang="be", <https://myaccount.google.com/intro?hl=bg>; rel="alternate"; hreflang="bg", <https://myaccount.google.com/intro?hl=bn>; rel="alternate"; hreflang="bn", <https://myaccount.google.com/intro?hl=bs>; rel="alternate"; hreflang="bs", <https://myaccount.google.com/intro?hl=ca>; rel="alternate"; hreflang="ca", <https://myaccount.google.com/intro?hl=cs>; rel="alternate"; hreflang="cs", <https://myaccount.google.com/intro?hl=cy>; rel="alternate"; hreflang="cy", <https://myaccount.google.com/intro?hl=da>; rel="alternate"; hreflang="da", <https://myaccount.google.com/intro?hl=de>; rel="alternate"; hreflang="de", <https://myaccount.google.com/intro?hl=el>; rel="alternate"; hreflang="el", <https://myaccount.google.com/intro?hl=en-GB>; rel="alternate"; hreflang="en-GB", <https://myaccount.google.com/intro?hl=es-ES>; rel="alternate"; hreflang="es-ES", <https://myaccount.google.com/intro?hl=es-419>; rel="alternate"; hreflang="es-419", <https://myaccount.google.com/intro?hl=et>; rel="alternate"; hreflang="et", <https://myaccount.google.com/intro?hl=eu>; rel="alternate"; hreflang="eu", <https://myaccount.google.com/intro?hl=fa>; rel="alternate"; hreflang="fa", <https://myaccount.google.com/intro?hl=fi>; rel="alternate"; hreflang="fi", <https://myaccount.google.com/intro?hl=fil>; rel="alternate"; hreflang="fil", <https://myaccount.google.com/intro?hl=fr-FR>; rel="alternate"; hreflang="fr-FR", <https://myaccount.google.com/intro?hl=fr-CA>; rel="alternate"; hreflang="fr-CA", <https://myaccount.google.com/intro?hl=ga>; rel="alternate"; hreflang="ga", <https://myaccount.google.com/intro?hl=gl>; rel="alternate"; hreflang="gl", <https://myaccount.google.com/intro?hl=gu>; rel="alternate"; hreflang="gu", <https://myaccount.google.com/intro?hl=hi>; rel="alternate"; hreflang="hi", <https://myaccount.google.com/intro?hl=hr>; rel="alternate"; hreflang="hr", <https://myaccount.google.com/intro?hl=hu>; rel="alternate"; hreflang="hu", <https://myaccount.google.com/intro?hl=hy>; rel="alternate"; hreflang="hy", <https://myaccount.google.com/intro?hl=id>; rel="alternate"; hreflang="id", <https://myaccount.google.com/intro?hl=is>; rel="alternate"; hreflang="is", <https://myaccount.google.com/intro?hl=it>; rel="alternate"; hreflang="it", <https://myaccount.google.com/intro?hl=iw>; rel="alternate"; hreflang="iw", <https://myaccount.google.com/intro?hl=ja>; rel="alternate"; hreflang="ja", <https://myaccount.google.com/intro?hl=ka>; rel="alternate"; hreflang="ka", <https://myaccount.google.com/intro?hl=kk>; rel="alternate"; hreflang="kk", <https://myaccount.google.com/intro?hl=km>; rel="alternate"; hreflang="km", <https://myaccount.google.com/intro?hl=kn>; rel="alternate"; hreflang="kn", <https://myaccount.google.com/intro?hl=ko>; rel="alternate"; hreflang="ko", <https://myaccount.google.com/intro?hl=ky>; rel="alternate"; hreflang="ky", <https://myaccount.google.com/intro?hl=lo>; rel="alternate"; hreflang="lo", <https://myaccount.google.com/intro?hl=lt>; rel="alternate"; hreflang="lt", <https://myaccount.google.com/intro?hl=lv>; rel="alternate"; hreflang="lv", <https://myaccount.google.com/intro?hl=mk>; rel="alternate"; hreflang="mk", <https://myaccount.google.com/intro?hl=ml>; rel="alternate"; hreflang="ml", <https://myaccount.google.com/intro?hl=mn>; rel="alternate"; hreflang="mn", <https://myaccount.google.com/intro?hl=mr>; rel="alternate"; hreflang="mr", <https://myaccount.google.com/intro?hl=ms>; rel="alternate"; hreflang="ms", <https://myaccount.google.com/intro?hl=my>; rel="alternate"; hreflang="my", <https://myaccount.google.com/intro?hl=ne>; rel="alternate"; hreflang="ne", <https://myaccount.google.com/intro?hl=nl>; rel="alternate"; hreflang="nl", <https://myaccount.google.com/intro?hl=no>; rel="alternate"; hreflang="no", <https://myaccount.google.com/intro?hl=or>; rel="alternate"; hreflang="or", <https://myaccount.google.com/intro?hl=pa>; rel="alternate"; hreflang="pa", <https://myaccount.google.com/intro?hl=pl>; rel="alternate"; hreflang="pl", <https://myaccount.google.com/intro?hl=pt-BR>; rel="alternate"; hreflang="pt-BR", <https://myaccount.google.com/intro?hl=pt-PT>; rel="alternate"; hreflang="pt-PT", <https://myaccount.google.com/intro?hl=ro>; rel="alternate"; hreflang="ro", <https://myaccount.google.com/intro?hl=ru>; rel="alternate"; hreflang="ru", <https://myaccount.google.com/intro?hl=si>; rel="alternate"; hreflang="si", <https://myaccount.google.com/intro?hl=sk>; rel="alternate"; hreflang="sk", <https://myaccount.google.com/intro?hl=sl>; rel="alternate"; hreflang="sl", <https://myaccount.google.com/intro?hl=sq>; rel="alternate"; hreflang="sq", <https://myaccount.google.com/intro?hl=sr-Cyrl>; rel="alternate"; hreflang="sr-Cyrl", <https://myaccount.google.com/intro?hl=sr-Latn>; rel="alternate"; hreflang="sr-Latn", <https://myaccount.google.com/intro?hl=sv>; rel="alternate"; hreflang="sv", <https://myaccount.google.com/intro?hl=sw>; rel="alternate"; hreflang="sw", <https://myaccount.google.com/intro?hl=ta>; rel="alternate"; hreflang="ta", <https://myaccount.google.com/intro?hl=te>; rel="alternate"; hreflang="te", <https://myaccount.google.com/intro?hl=th>; rel="alternate"; hreflang="th", <https://myaccount.google.com/intro?hl=tr>; rel="alternate"; hreflang="tr", <https://myaccount.google.com/intro?hl=uk>; rel="alternate"; hreflang="uk", <https://myaccount.google.com/intro?hl=ur>; rel="alternate"; hreflang="ur", <https://myaccount.google.com/intro?hl=uz>; rel="alternate"; hreflang="uz", <https://myaccount.google.com/intro?hl=vi>; rel="alternate"; hreflang="vi", <https://myaccount.google.com/intro?hl=zh-CN>; rel="alternate"; hreflang="zh-CN", <https://myaccount.google.com/intro?hl=zh-HK>; rel="alternate"; hreflang="zh-HK", <https://myaccount.google.com/intro?hl=zh-TW>; rel="alternate"; hreflang="zh-TW", <https://myaccount.google.com/intro?hl=zu>; rel="alternate"; hreflang="zu"
server: ESF
x-xss-protection: 0
x-frame-options: SAMEORIGIN
x-content-type-options: nosniff
set-cookie: NID=209=XKfE3R9eEmcK4udaGFiksscSNZbXvE6M2bwVGuDfUXnS8SA2by7cObp-2ORhVWrLvRJ8_IzXnQOveCIrJBTW8JoHzxHZ5mURbVZBYiKIW3jo1IOBeVPp28W8navfrJfo7iZfZfwWY_I8g-veWa3aLWZe_crLBmhGi1SO_n9HSKA; expires=Tue, 24-Aug-2021 03:39:03 GMT; path=/; domain=.google.com; HttpOnly
alt-svc: h3-29=":443"; ma=2592000,h3-T051=":443"; ma=2592000,h3-Q050=":443"; ma=2592000,h3-Q046=":443"; ma=2592000,h3-Q043=":443"; ma=2592000,quic=":443"; ma=2592000; v="46,43"

HTTP/2 200 
accept-ranges: bytes
vary: Accept-Encoding
content-type: text/html
content-length: 89340
content-security-policy-report-only: script-src 'nonce-lBBmn0a43NviV2d4CAmPuA' 'strict-dynamic' 'unsafe-eval' 'unsafe-inline' http: https:; object-src 'none'; report-uri https://csp.withgoogle.com/csp/webmaster/www_google; base-uri 'none'
cross-origin-resource-policy: cross-origin
date: Mon, 22 Feb 2021 03:39:03 GMT
pragma: no-cache
expires: Fri, 01 Jan 1990 00:00:00 GMT
cache-control: no-cache, must-revalidate
last-modified: Fri, 11 Sep 2020 07:30:00 GMT
x-content-type-options: nosniff
server: sffe
x-xss-protection: 0
alt-svc: h3-29=":443"; ma=2592000,h3-T051=":443"; ma=2592000,h3-Q050=":443"; ma=2592000,h3-Q046=":443"; ma=2592000,h3-Q043=":443"; ma=2592000,quic=":443"; ma=2592000; v="46,43"

