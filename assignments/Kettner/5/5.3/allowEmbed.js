const express = require('express')
const { createReadStream } = require('fs')
const app = express();

app.use(function (req, res, next) {
    res.setHeader(
      'Content-Security-Policy',
      "default-src 'self' https://www.urbandictionary.com/;"
      );
    next();
  });

app.get('/', (req, res) => {
    createReadStream('embedding.html').pipe(res)
});

app.listen(4000)
