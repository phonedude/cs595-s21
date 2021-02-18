


const express = require('express')
const { createReadStream } = require('fs')

const bodyParser = require('body-parser')

const app = express()
app.use(bodyParser.urlencoded({extended: false}))

app.get('/AlwaysSunnyInPhiladelphia.html', (req, res) => {
    createReadStream('AlwaysSunnyInPhiladelphia.html').pipe(res)
})

app.get('/FreddieGibbs.html', (req, res) => {
    createReadStream('FreddieGibbs.html').pipe(res)
})

app.get('/KillBill2.html', (req, res) => {
    createReadStream('KillBill2.html').pipe(res)
})

app.listen(4000)
