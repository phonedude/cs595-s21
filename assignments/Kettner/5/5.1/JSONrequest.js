const express = require('express')
const { createReadStream } = require('fs')
const app = express();

app.get('/', (req, res) => {
    createReadStream('JSONrequest.html').pipe(res)
});

app.listen(4000)

