const express = require('express')
const app = express()
const port = 3000

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

app.use(function(req, res, next) {
  // Allow all origins
  res.header("Access-Control-Allow-Origin", "*");
  // Custom Headers
  res.header("Access-Control-Allow-Headers", "X-CS595S21-ParksAndRec, X-CS595S21-Metallica, X-CS595S21-StarWars");
  next();
});

app.get('/', (req, res) => {
  res.sendFile('index.html', {root: __dirname })
})

app.get('/json', (req, res) => {
     res.json({ jsonRes });
});

app.listen(port, () => {
  console.log(`JSON client app listening at http://localhost:${port}`)
})