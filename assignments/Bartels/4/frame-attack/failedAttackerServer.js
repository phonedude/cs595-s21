const express = require('express')
const { createReadStream } = require('fs')
var app = express();

app.get('/', (req, res) => {
    createReadStream('failedCookieSteal.html').pipe(res)
})

app.listen(8001)