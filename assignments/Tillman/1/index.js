const express = require('express')
const { createReadStream } = require('fs')

const bodyParser = require('body-parser')

const app = express()
app.use(bodyParser.urlencoded({extended: false}))

app.get('/djmyles.html', (req, res) => {
    createReadStream('djmyles.html').pipe(res)
})

app.get('/family_Matters.html', (req, res) => {
    createReadStream('family_Matters.html').pipe(res)
})

app.get('/transformers.html', (req, res) => {
    createReadStream('transformers.html').pipe(res)
})

app.listen(4000)
console.log("App is running...")