const express = require('express')
const { createReadStream } = require('fs')

const bodyParser = require('body-parser')

const app = express()
app.use(bodyParser.urlencoded({extended: false}))

app.get('/americanhorrorstory.html', (req, res) => {
    createReadStream('americanhorrorstory.html').pipe(res)
})
app.get('/avengers.html', (req, res) => {
    createReadStream('avengers.html').pipe(res)
})
app.get('/lilpeep.html', (req, res) => {
    createReadStream('lilpeep.html').pipe(res)
})
app.listen(4000)
