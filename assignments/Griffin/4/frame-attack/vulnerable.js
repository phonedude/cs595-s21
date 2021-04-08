const express = require('express')
const { createReadStream } = require('fs')
var app = express();
const port =4000
app.get('/', (req, res) => {
   res.append('Set-Cookie', 'login=abcd; Path=/')
   createReadStream('vulnerablehtml.html').pipe(res)
})

app.listen(port)