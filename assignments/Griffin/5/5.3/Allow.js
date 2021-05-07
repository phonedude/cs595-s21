const express = require('express')
const { createReadStream } = require('fs')
const app = express();

app.use(function (req, res, next) {
    res.setHeader(
      'Content-Security-Policy',
      "default-src 'self' https://www.alibaba.com;"
      );
    next();
  });

app.get('/', (req, res) => {
    createReadStream('Frame.html').pipe(res)
});

app.listen(4000)