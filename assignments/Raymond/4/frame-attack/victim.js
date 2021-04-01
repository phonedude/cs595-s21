const express = require('express')
const { createReadStream } = require('fs')
const app = express()
const port = 4001

app.get('/', (req, res) => {
    res.append('Set-cookie', 'login=1234; Path=/')
    createReadStream('victim.html').pipe(res)
})
app.listen(port, () => {
  console.log(`Victim listening at http://localhost:${port}`)
})