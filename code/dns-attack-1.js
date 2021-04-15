const express = require('express')

const app = express()

app.get('/', (req, res) => {
  res.send(`
    <!doctype html>
    <html>
      <body>
        <h3>Welcome to attacker.com!</h3>
        <img src='http://localhost:4000' />
      </body>
    </html>
  `)
  })

app.listen(4001)
