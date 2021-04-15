const express = require('express')

const app = express()

app.get('/', (req, res) => {
  res.send(`
    <!doctype html>
    <html>
      <body>
        <h3>Welcome to attacker.com!</h3>
	<button>Send a PUT to attacker.com:4001 </button>
        <script>
	  document.querySelector('button').addEventListener('click',() => {
          fetch('http://attacker.com:4001',{ method: 'PUT' })
            .then(res => res.text())
            .then(text => document.body.innerHTML += '<br />' + text)
            .catch(err => document.body.innerHTML += '<br />' + err)
          })
        </script>
      </body>
    </html>
  `)
})

app.listen(4001)
