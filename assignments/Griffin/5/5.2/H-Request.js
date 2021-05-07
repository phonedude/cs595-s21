const express = require('express')
const { createReadStream } = require('fs')
const app = express();

app.get('/', (req, res) => {
    createReadStream('H-Request.html').pipe(res)
});

app.listen(4000)