const express = require('express')
const { createReadStream } = require('fs')
var app = express();
const port =4000
app.get('/', (req, res) => {
   res.append('X-Frame-Options', 'SAMEORIGIN')
   res.append('Set-Cookie', 'login=abcd; Path=/; Secure; Httponly')
   createReadStream('secure.html').pipe(res)
})

app.listen(port)