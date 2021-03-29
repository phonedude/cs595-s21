const express = require('express')
const { createReadStream } = require('fs')
var app = express();

app.get('/', (req, res) => {
    res.append('X-Frame-Options', 'SAMEORIGIN')
    createReadStream('securePage.html').pipe(res)
})

app.listen(4001)