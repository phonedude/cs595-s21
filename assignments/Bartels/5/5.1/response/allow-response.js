const express = require('express')
const { createReadStream } = require('fs')
var app = express();
var cors = require('cors')

app.use(cors())

app.get('/', (req, res) => {
    createReadStream('favoriteThings.json').pipe(res)
});

app.listen(8000)