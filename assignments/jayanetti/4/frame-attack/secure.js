const express = require('express')
const { createReadStream } = require('fs')
const app = express()
const port = 5003

app.get('/', (req, res) => {
  res.append('Set-Cookie', 'login=secretcookie; Path=/, Secure')
  /*  res.append('X-Frame-Options', 'SAMEORIGIN')*/
  res.send("<html><title>Himarsha's Victim Page</title><h1>Welcome to my secure victim page!<br></h1>Himarsha Jayanetti, CS595 - Spring 2021, ODU<br><br>This page will be framed at a cross origin domain.<script>document.write(document.cookie)</script></html>")
})

app.listen(port, () => {
  console.log(`Server 3: Secure victim is listening at http://localhost:${port}`)
})