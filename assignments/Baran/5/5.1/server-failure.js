const express = require('express')
const { createReadStream } = require('fs')
const app = express()
var cors = require('cors')

app.get('/', (req, res) => {
  createReadStream('favorites.json').pipe(res)
})

app.listen(4002, () => {
  console.log(`server-success`)
})