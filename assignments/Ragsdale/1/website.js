const express = require('express')
const { createReadStream } = require('fs')

const bodyParser = require('body-parser')

const app = express()
app.use(bodyParser.urlencoded({extended: false}))

app.get('/Friday.html', (req, res) => {
    createReadStream('Friday.html').pipe(res)
})

app.get('/Snowfall.html', (req, res) => {
    createReadStream('Snowfall.html').pipe(res)
})

app.get('/Jcole.html', (req, res) => {
    createReadStream('Jcole.html').pipe(res)
})



app.listen(4000)
