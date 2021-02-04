const express = require('express')
const app = express()
const port = 3000

// https://expressjs.com/en/starter/static-files.html
// required to load favicon file
app.use('/images', express.static('images'))

app.get('/', (req, res) => {
  res.sendFile('html/index.html', {root: __dirname })
})

// Metallica route
app.get('/metallica', (req, res) => {
  res.sendFile('html/metallica.html', {root: __dirname })
})

// Star Wars route
app.get('/starwars', (req, res) => {
  res.sendFile('html/starwars.html', {root: __dirname })
})

// Parks and Rec route
app.get('/parksandrec', (req, res) => {
  res.sendFile('html/parksandrec.html', {root: __dirname })
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})