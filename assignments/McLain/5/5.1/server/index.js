const express = require('express')
const cors = require('cors')
const app = express()
const port = 3000

var corsOptions = {
  origin: 'http://localhost:5000',
  optionsSuccessStatus: 200
}

// JSON response for allowed calls
const jsonRes = {
  favorites: [
    {
      name: "Metallica",
      category: "music",
      genre: "metal",
      year: "1981"
    }, 
    {
      name: "Parks and Recreation",
      category: "television",
      genre: "comedy",
      year: "2009"
    },
    {
      name: "Star Wars",
      category: "film",
      genre: "science fiction",
      year: "1977"
    }
  ]
};

app.get('/', (req, res) => {
  res.sendFile('index.html', {root: __dirname })
})

app.get('/json', cors(corsOptions), (req, res) => {
     res.json({ jsonRes });
});

app.get('/badjson', (req, res) => {
  res.json({ jsonRes });
});

app.listen(port, () => {
  console.log(`JSON client app listening at http://localhost:${port}`)
})