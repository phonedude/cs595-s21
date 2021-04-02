const express = require('express')
const { createReadStream } = require('fs')
var app = express();

app.get('/', (req, res) => {
   res.append('Set-Cookie', 'login=cookie1; Path=/')
   createReadStream('iframehtml.html').pipe(res)
})

app.listen(4000)

