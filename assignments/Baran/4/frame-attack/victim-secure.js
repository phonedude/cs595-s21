const express = require('express')
const { createReadStream } = require('fs')
const app = express()
const port = 8003

app.get('/', (req, res) => {
  res.append('Set-Cookie', 'login=dontstealme; Path=/, Secure')
})

app.listen(port, () => {
  console.log(`victim-secure online`)
})