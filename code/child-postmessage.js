const express = require('express')
const { createReadStream } = require('fs')

const bodyParser = require('body-parser')

const app = express()
app.use(bodyParser.urlencoded({extended: false}))

app.get('/child.html', (req, res) => {
   res.send(`<h1>localhost:5001</h1>
<div></div>
<script>
  const div = document.querySelector('div')
  window.addEventListener('message', event => {
    if (event.origin !== 'http://localhost:5000') return
    div.textContent = event.data
  })
</script>`)
})

app.listen(5001)
