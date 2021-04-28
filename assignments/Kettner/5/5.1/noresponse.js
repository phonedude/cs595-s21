const express = require('express')
const { createReadStream } = require('fs')
const app = express();

app.get('/', (req, res) => {
    createReadStream('Favorites.json').pipe(res)
});

app.listen(8000) 
