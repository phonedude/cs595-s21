const express = require('express')
const { createReadStream } = require('fs')
var app = express();

app.get('/', (req, res) => {
    createReadStream('favoriteThings.json').pipe(res)
    res.header('X-CS595s21-marvelmovie', 'Logan')
    res.header('X-CS595s21-netflixshow', 'Longmire')
    res.header('X-CS595s21-amazonshow', 'Grimm')
});

app.listen(8000)