const express = require('express')
const { createReadStream } = require('fs')
const app = express()
const port = 5002

app.get('/', (req, res) => {
  res.append('Set-Cookie', 'login=secretcookie; Path=/')
  res.send("<html><title>Himarsha's Victim Page</title><h1>Welcome to my vulnerable victim page!<br></h1>Himarsha Jayanetti, CS595 - Spring 2021, ODU<br><br>This page will be framed at a cross origin domain.<script>document.write(document.cookie)</script></html>")
})

app.listen(port, () => {
  console.log(`Server 2: Vulnerable victim is listening at http://localhost:${port}`)
})