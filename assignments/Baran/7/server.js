const express = require('express')
const { createReadStream } = require('fs')
const app = express()

app.get('/', (req, res) => {
  createReadStream('node-homepage/index.html').pipe(res)
})

app.listen(5001, ()	 => {
  console.log(`server online`)
})

app.use(express.static('node-homepage'))