const express = require('express')
const { createReadStream } = require('fs')
var app = express();

app.get('/', (req, res) => {
    createReadStream('request.html').pipe(res)
});

app.listen(4000)