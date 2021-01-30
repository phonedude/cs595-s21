
const express = require('express')
const { createReadStream } = require('fs')
const bodyParser = require('body-parser')
const app = express()
app.get ('/', (req, res) => { createReadStream('Harrypotter.html').pipe(res)
})
app.listen(8080)
