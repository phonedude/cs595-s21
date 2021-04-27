const express = require('express')
const app = express()
const { createReadStream } = require('fs')
const port = 4000

app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*")
    res.setHeader("Content-Security-Policy", "default-src 'self' *.addtoany.com/; upgrade-insecure-requests"); next()
})

app.get('/', (req, res) => {
  res.sendFile('iframe.html', {root: __dirname })
})

app.listen(port, () => {
  console.log(`Server 2 (YES iframe) listening at http://localhost:${port}`)
})