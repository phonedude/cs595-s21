const express = require('express')
const app = express()
const { createReadStream } = require('fs')
const port = 5000
var cors = require('cors')

app.use(cors())

app.get('/', (req, res) => {
  createReadStream('files/favorites.json').pipe(res)
})

app.listen(port, () => {
  console.log(`Server 3 (YES json) listening at http://localhost:${port}`)
})

app.use(express.static('files'))