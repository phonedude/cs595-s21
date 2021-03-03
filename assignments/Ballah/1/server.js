const express = require('express')
const { createReadStream } = require('fs')

const bodyParser = require('body-parser')

const app = express()
app.use(bodyParser.urlencoded({extended: false}))

app.get('/blacklighting.html', (req, res) => {
    createReadStream('blacklighting.html').pipe(res)
})
app.get('/callofduty.html', (req, res) => {
    createReadStream('callofduty.html').pipe(res)
})
app.get('/nbayoungboy.html', (req, res) => {
    createReadStream('nbayoungboy.html').pipe(res)
})
app.listen(4000) 
