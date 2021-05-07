const express = require('express')
const { createReadStream } = require('fs')
const app = express()

var cors = require('cors')

app.use(cors())

app.get('/', (req, res) => {
  res.set('X-CS595s21-videogame', 'Tekken 7')
  res.set('X-CS595s21-anime', 'Cowboy Bebop')
  res.set('X-CS595s21-tvshow', 'Breaking Bad') 
})

app.listen(5002, () => {
  console.log(`server-failure online`)
})