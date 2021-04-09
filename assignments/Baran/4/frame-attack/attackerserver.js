const express = require('express')
const { createReadStream } = require('fs')
const app = express()
const port = 8001

app.get('/', (req, res) => {
  createReadStream('victim-unsecure.html').pipe(res)
})

app.listen(port, () => {
  console.log(`attacker online`)
})

app.use(express.static('files'))