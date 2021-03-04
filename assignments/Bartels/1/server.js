const express = require('express')
const { createReadStream } = require('fs')

const bodyParser = require('body-parser')

const app = express()
app.use(bodyParser.urlencoded({extended: false}))

app.get('/Logan.html', (req, res) => {
    createReadStream('Logan.html').pipe(res)
})

app.get('/Grimm.html', (req, res) => {
    createReadStream('Grimm.html').pipe(res)
})

app.get('/Longmire.html', (req, res) => {
    createReadStream('Longmire.html').pipe(res)
})

app.listen(4000)
