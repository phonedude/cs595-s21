const express = require('express')
const { createReadStream } = require('fs')
const app = express()
const port = 4003

app.get('/', (req, res) => {
    res.append('X-Frame-Options', 'SAMEORIGIN')
    createReadStream('secure.html').pipe(res)
})

app.listen(port, () => {
  console.log(`secure listening at http://localhost:${port}`)
})