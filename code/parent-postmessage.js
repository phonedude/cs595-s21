const express = require('express')
const { createReadStream } = require('fs')

const bodyParser = require('body-parser')

const app = express()
app.use(bodyParser.urlencoded({extended: false}))

app.get('/', (req, res) => {
  res.send(`<h1>localhost:5000</h1>
<input name='val' />
<br /><br />
<iframe src='http://localhost:5001/child.html'></iframe>
<script>
  const input = document.querySelector('input')
  const iframe = document.querySelector('iframe')
  input.addEventListener('input', () => {
    iframe.contentWindow.postMessage(input.value, 'http://localhost:5001')
  })
</script>`)
})

app.listen(5000)
