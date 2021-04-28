const express = require('express')
const app = express()
const { createReadStream } = require('fs')
const port = 5000

app.get('/', (req, res) => {
  createReadStream('files/favorites.json').pipe(res)
})

app.listen(port, () => {
  console.log(`Server 2 (NO json) listening at http://localhost:${port}`)
})

app.use(express.static('files'))