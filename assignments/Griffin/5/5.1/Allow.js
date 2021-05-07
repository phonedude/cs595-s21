const express = require('express')
const { createReadStream } = require('fs')
const app = express();
var cors = require('cors')

app.use(cors())

app.get('/', (req, res) => {
    createReadStream('Results.json').pipe(res)
});

app.listen(8000)