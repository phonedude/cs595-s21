const express = require('express')
const { createReadStream } = require('fs')
const app = express()

app.get('/', (req, res) => {
  createReadStream('main.html').pipe(res)
})

app.listen(5001, ()	 => {
  console.log(`server online`)
})
