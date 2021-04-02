const express = require('express')
const { createReadStream } = require('fs')
const app = express()
const port = 5001
/*var cors = require('cors')

app.use(cors())*/
/*app.disable('X-CS595s21-movie')*/
/*app.options('/', cors())*/
app.get('/', (req, res) => {
  /*res.append('Access-Control-Allow-Headers', 'X-CS595s21-movie,X-CS595s21-tvshow')*/
  createReadStream('files/1.html').pipe(res)
})

app.listen(port, ()	 => {
  console.log(`Server 1 is listening at http://localhost:${port}`)
})

app.use(express.static('files'))