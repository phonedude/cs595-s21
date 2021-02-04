const express = require('express')
const { createReadStream } = require('fs')

const bodyParser = require('body-parser')

const app = express()
app.use(bodyParser.urlencoded({extended: false}))

app.get('/', (req, res) => {
    createReadStream('index-01.html').pipe(res)
})

app.listen(4000)

app.use(express.static('App files'))