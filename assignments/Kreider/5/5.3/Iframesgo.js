const express = require('express')
const { createReadStream } = require('fs')
var app = express();

app.use(function (req, res, next) {
    res.setHeader(
      'Content-Security-Policy',
      "default-src 'self' https://www.bing.com/;"
      );
    next();
  });

app.get('/', (req, res) => {
    createReadStream('Iframe.html').pipe(res)
});

app.listen(4000) 