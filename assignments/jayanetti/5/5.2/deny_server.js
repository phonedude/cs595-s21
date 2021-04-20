const express = require('express')
const { createReadStream } = require('fs')
const app = express()
const port = 5002
var cors = require('cors')

app.use(cors())

app.get('/', (req, res) => {
  res.set('X-CS595s21-movie', 'Me before you')
  res.set('X-CS595s21-tvshow', 'Spellbinder')
  res.set('X-CS595s21-musicband', 'Westlife') 
  res.send("<html><title>Himarsha's Page</title><h1>Welcome to my page!<br></h1>Himarsha Jayanetti, CS595 - Spring 2021, ODU</html>")
})

app.listen(port, () => {
  console.log(`Server 2 is listening at http://localhost:${port}`)
})

app.use(express.static('files'))