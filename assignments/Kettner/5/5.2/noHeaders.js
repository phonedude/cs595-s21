const express = require('express')
const { createReadStream } = require('fs')
const app = express();

app.get('/', (req, res) => {
    createReadStream('Favorites.json').pipe(res)

    res.set('Access-Control-Expose-Headers', '*')
    res.set('X-CS595s21-series', 'American Horror Story')
    res.set('X-CS595s21-film', 'The Avengers')
    res.set('X-CS595s21-music', 'Lil Peep')
});

app.listen(8000)
