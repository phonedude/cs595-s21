const express = require('express')
const { createReadStream } = require('fs')

const bodyParser = require('body-parser')

const app = express()
app.use(bodyParser.urlencoded({extended: false}))

app.get('/', (req, res) => {
    createReadStream('main.html').pipe(res)
})

app.listen(4000)

app.use(express.static('pages'))

console.log(`server is online at localhost:4000`)