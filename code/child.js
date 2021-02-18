const express = require('express')
const { createReadStream } = require('fs')

const bodyParser = require('body-parser')

const app = express()
app.use(bodyParser.urlencoded({extended: false}))

app.get('/child.html', (req, res) => {
   res.send(`<h1>localhost:4001</h1>
<div></div>
<script>
  const div = document.querySelector('div')
  setInterval(() => {
    div.textContent = decodeURIComponent(window.location.hash).slice(1)
  }, 100)
</script>`)
})

app.post('/login', (req, res) => {
  console.log(req.body)
})


app.listen(4001)
