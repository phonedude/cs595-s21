const express = require('express')
const { createReadStream } = require('fs')
const app = express()
const port = 5002
var cors = require('cors')

app.use(cors())

app.get('/', (req, res) => {
  createReadStream('files/myfav.json').pipe(res)
})

app.listen(port, () => {
  console.log(`Server 2 is listening at http://localhost:${port}`)
})

app.use(express.static('files'))