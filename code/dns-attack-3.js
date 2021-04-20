const express = require('express')

const app = express()

app.get('/', (req, res) => {
  res.send(`
    <!doctype html>
    <html>
      <body>
        <h3>Welcome to attacker.com!</h3>
        <script>
          fetch('http://localhost:4000',{ method: 'PUT' })
            .then(res => res.text())
            .then(text => document.body.innerHTML += '<br />' + text)
            .catch(err => document.body.innerHTML += '<br />' + err)
        </script>
      </body>
    </html>
  `)
  })

app.listen(4001)
