const express = require('express')
const app = express()
const port = 4000

app.get('/', (req, res) => {
  res.sendFile('files/headers.html', {root: __dirname })
})

app.listen(port, () => {
  console.log(`Server 1 listening at http://localhost:${port}`)
})

app.use(express.static('files'))