const express = require('express')
const { createReadStream } = require('fs')
const app = express()
const port = 5001


app.use(function (req, res, next) {
  res.setHeader(
    'Content-Security-Policy',
    "default-src 'self' https://www.adweek.com/; script-src 'self' 'unsafe-inline'"
  );
  next();
});

app.get('/', (req, res) => {
  createReadStream('files/my.html').pipe(res)
})

app.listen(port, () => {
  console.log(`My Server 1 is listening at http://localhost:${port}`)
})

app.use(express.static('files'))