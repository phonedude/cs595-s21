const express = require('express')
const { createReadStream } = require('fs')
const app = express()
const port = 4002

app.get('/', (req, res) => {
  res.sendFile('/attacker.html', {root: __dirname })
})
app.listen(port, () => {
  console.log(`Attacker listening at http://localhost:${port}`)
})