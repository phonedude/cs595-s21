const express = require('express')
const { createReadStream } = require('fs')
var app = express();

app.get('/', (req, res) => {
    createReadStream('cookieThiefFail.html').pipe(res)
})

app.listen(8000)
