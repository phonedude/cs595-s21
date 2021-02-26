HTTP/1.1 301 Moved Permanently
Content-Length: 0
Location: https://github.com/

HTTP/2 200 
server: GitHub.com
date: Mon, 22 Feb 2021 03:37:41 GMT
content-type: text/html; charset=utf-8
vary: X-PJAX, Accept-Encoding, Accept, X-Requested-With
etag: W/"f1d3c5d1047ddb49969249117d2df184"
cache-control: max-age=0, private, must-revalidate
strict-transport-security: max-age=31536000; includeSubdomains; preload
x-frame-options: deny
x-content-type-options: nosniff
x-xss-protection: 1; mode=block
referrer-policy: origin-when-cross-origin, strict-origin-when-cross-origin
expect-ct: max-age=2592000, report-uri="https://api.github.com/_private/browser/errors"
content-security-policy: default-src 'none'; base-uri 'self'; block-all-mixed-content; connect-src 'self' uploads.github.com www.githubstatus.com collector.githubapp.com api.github.com github-cloud.s3.amazonaws.com github-production-repository-file-5c1aeb.s3.amazonaws.com github-production-upload-manifest-file-7fdce7.s3.amazonaws.com github-production-user-asset-6210df.s3.amazonaws.com cdn.optimizely.com logx.optimizely.com/v1/events wss://alive.github.com github.githubassets.com; font-src github.githubassets.com; form-action 'self' github.com gist.github.com; frame-ancestors 'none'; frame-src render.githubusercontent.com; img-src 'self' data: github.githubassets.com identicons.github.com collector.githubapp.com github-cloud.s3.amazonaws.com user-images.githubusercontent.com/ *.githubusercontent.com customer-stories-feed.github.com spotlights-feed.github.com; manifest-src 'self'; media-src github.githubassets.com; script-src github.githubassets.com; style-src 'unsafe-inline' github.githubassets.com; worker-src github.com/socket-worker-5029ae85.js gist.github.com/socket-worker-5029ae85.js
set-cookie: _gh_sess=1h7VCL%2B3FInbHcbH22%2F%2Bz3HAKNQDBnLYEkE8jcYsG36a9KkhdLncARu1LuyRD6kZDLUjnstTEAf3iHvqzZHACQp0l8AeUFtxK%2Fhyxl9xOJVcp2zVZzJmRW0UlaU8%2B3auecExC9sDauT%2B72Vrz6kKrhRrlgInLva2Tc3%2FXhYdTJhTyg8ETGQribl7ZHoGdYiHvxWFabLtOzd4pgTE0D%2Fe8qb6fS%2FSVqA%2BWI5LqnimMG6KKgHBfBoyUxBL%2B40JedDmNnBqprfJ2OU8UKpKHiUT1A%3D%3D--ZV6x5MFjYScDbO0s--o%2B9B%2BEroPj1foH8lw%2B9%2Bog%3D%3D; Path=/; HttpOnly; Secure; SameSite=Lax
set-cookie: _octo=GH1.1.297692384.1613965069; Path=/; Domain=github.com; Expires=Tue, 22 Feb 2022 03:37:49 GMT; Secure; SameSite=Lax
set-cookie: logged_in=no; Path=/; Domain=github.com; Expires=Tue, 22 Feb 2022 03:37:49 GMT; HttpOnly; Secure; SameSite=Lax
accept-ranges: bytes
x-github-request-id: C8C6:6D1B:132DBD6:1672BFA:6033270D

