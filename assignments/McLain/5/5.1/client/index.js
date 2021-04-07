const express = require('express')
const app = express()
const port = 4000


app.get('/', (req, res) => {
  res.sendFile('index.html', {root: __dirname })
})

// app.get('/json', (req, res) => {
//      res.json({jsonRes});
// });

app.listen(port, () => {
  console.log(`JSON server app listening at http://localhost:${port}`)
})