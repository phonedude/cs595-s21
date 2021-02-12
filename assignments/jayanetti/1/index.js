const express = require('express')
const app = express()
const port = 4000

app.get('/', (req, res) => {
  res.send('<!DOCTYPE html><html><head><link rel="icon" href="/images/favicon.ico" type="image/ico" /><link rel="shortcut icon" href="/favicon2.ico" /><title>Welcome!</title></head><body><h1>Welcome to my home page!</h1><p>Himarsha Jayanetti, CS595 - Spring 2021, ODU</p><p>Few of my favorites:</p><ul><li><a href="/westlife.html">Music Band</a><li><a href="/mebeforeyou.html">Movie</a><li><a href="/spellbinder.html">TV Show</a></ul></body></html>')
})

app.listen(port, () => {
  console.log(`My server app is listening at http://localhost:${port}`)
})

app.use(express.static('app_files'))