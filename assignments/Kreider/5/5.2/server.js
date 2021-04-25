const express = require('express')
const { createReadStream } = require('fs')
var app = express();

app.get('/', (req, res) => {
    createReadStream('heads.html').pipe(res)
});

app.listen(7000)