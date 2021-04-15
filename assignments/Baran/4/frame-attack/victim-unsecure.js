const express = require('express')
const { createReadStream } = require('fs')
const app = express()
const port = 8002

app.get('/', (req, res) => {
  res.append('Set-Cookie', 'login=dontstealme; Path=/')
})

app.listen(port, () => {
  console.log(`victim-unsecure online`)
})