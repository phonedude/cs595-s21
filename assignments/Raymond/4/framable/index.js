const express = require('express')
const app = express()
const port = 4000

// https://expressjs.com/en/starter/static-files.html
app.use('/html', express.static('html'))

app.get('/', (req, res) => {
  res.sendFile('html/index.html', {root: __dirname })
})

app.listen(port, () => {
  console.log(`Framable app listening at http://localhost:${port}`)
})