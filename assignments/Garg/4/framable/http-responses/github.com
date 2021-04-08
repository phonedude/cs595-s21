HTTP/1.1 301 Moved Permanently
Content-Length: 0
Location: https://github.com/

HTTP/2 200 
server: GitHub.com
date: Thu, 01 Apr 2021 16:19:09 GMT
content-type: text/html; charset=utf-8
vary: X-PJAX, Accept-Language, Accept-Encoding, Accept, X-Requested-With
etag: W/"1b2004497b8bcc460d60f597522f8682"
cache-control: max-age=0, private, must-revalidate
strict-transport-security: max-age=31536000; includeSubdomains; preload
x-frame-options: deny
x-content-type-options: nosniff
x-xss-protection: 0
referrer-policy: origin-when-cross-origin, strict-origin-when-cross-origin
expect-ct: max-age=2592000, report-uri="https://api.github.com/_private/browser/errors"
content-security-policy: default-src 'none'; base-uri 'self'; block-all-mixed-content; connect-src 'self' uploads.github.com www.githubstatus.com collector.githubapp.com api.github.com github-cloud.s3.amazonaws.com github-production-repository-file-5c1aeb.s3.amazonaws.com github-production-upload-manifest-file-7fdce7.s3.amazonaws.com github-production-user-asset-6210df.s3.amazonaws.com cdn.optimizely.com logx.optimizely.com/v1/events wss://alive.github.com github.githubassets.com; font-src github.githubassets.com; form-action 'self' github.com gist.github.com; frame-ancestors 'none'; frame-src render.githubusercontent.com; img-src 'self' data: github.githubassets.com identicons.github.com collector.githubapp.com github-cloud.s3.amazonaws.com secured-user-images.githubusercontent.com/ *.githubusercontent.com customer-stories-feed.github.com spotlights-feed.github.com; manifest-src 'self'; media-src github.githubassets.com; script-src github.githubassets.com; style-src 'unsafe-inline' github.githubassets.com; worker-src github.com/socket-worker-3f088aa2.js gist.github.com/socket-worker-3f088aa2.js
set-cookie: _gh_sess=jJzjDXOdTnLfzpYF07BBnTD4cA%2Fm3YjdtZJHlzaNS3Sd7ONGLbdjhhCdrjXtDQ%2BRxd361bEFFfEFARYY9x3Y2CuK1yMTcQDhtFDAbHJd5Le3hUFuk3Bc0Vx7i%2BbSRocr91FKDmOPd5PQlnq%2Fl0CVdExG2EtIc29oM93yXCsGZxeXax%2BDYOOa4QFGnaLhRQJjofyMRF45xZbB01IpwRkzRRiaXAa4l1GjRcNdmTkPId8ijY0jo2oKfN%2FdHlZdm92Kz0ZIfCi0TVN%2F%2Fo8m1lrQZA%3D%3D--p2Rle8yg1brKTA9G--7eQBjawL%2BgoMSESvAx59vg%3D%3D; Path=/; HttpOnly; Secure; SameSite=Lax
set-cookie: _octo=GH1.1.1000047767.1617293958; Path=/; Domain=github.com; Expires=Fri, 01 Apr 2022 16:19:18 GMT; Secure; SameSite=Lax
set-cookie: logged_in=no; Path=/; Domain=github.com; Expires=Fri, 01 Apr 2022 16:19:18 GMT; HttpOnly; Secure; SameSite=Lax
accept-ranges: bytes
x-github-request-id: CEA0:38D1:1935BC:2CE580:6065F286

