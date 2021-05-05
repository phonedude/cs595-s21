const express = require('express')
const { createReadStream } = require('fs')
const app = express()

app.use(function (req, res, next) {
  res.setHeader(
    'Content-Security-Policy', "default-src 'self'; script-src 'self'");
	next();
});

app.get('/', (req, res) => {
  createReadStream('main.html').pipe(res)
})

app.listen(5001, () => {
  console.log(`server online`)
})