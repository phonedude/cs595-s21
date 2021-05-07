const express = require('express')
const { createReadStream } = require('fs')
var app = express();
var cors = require('cors')

app.use(cors())

app.get('/', (req, res) => {
    createReadStream('Results.json').pipe(res)
    res.header('Access-Control-Expose-Headers', '*')
    res.header('X-CS595s21-Batman', 'Bruce')
    res.header('X-CS595s21-Superman', 'Klark')
    res.header('X-CS595s21-Spiderman', 'Peter')
});

app.listen(8000)