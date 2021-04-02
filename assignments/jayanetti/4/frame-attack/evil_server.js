const express = require('express')
const { createReadStream } = require('fs')
const app = express()
const port = 5001

app.get('/', (req, res) => {
  createReadStream('files/html/stolencookie.html').pipe(res)
})

app.listen(port, () => {
  console.log(`Server 1: Attacker is listening at http://localhost:${port}`)
})

app.use(express.static('files'))