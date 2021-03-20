const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.sendFile('html/index.html', {root: __dirname })
})

// Denied iFrame route
app.get('/denied', (req, res) => {
  res.sendFile('html/denied.html', {root: __dirname })
})

app.listen(port, () => {
  console.log(`Frame attacker app listening at http://localhost:${port}`)
})