const express = require('express')
const { createReadStream } = require('fs')

const bodyParser = require('body-parser')
const cookieParser = require('cookie-parser')

const USERS = {
  alice: '123',
  bob: 'eagle'
}

const app = express()
app.use(bodyParser.urlencoded({extended: false}))
app.use(cookieParser())

app.get('/', (req, res) => {
    const username = req.cookies.username
    if (username) {
      // note: use backquotes `` for ${var} trick
      res.send(`Hi ${username}!`)
    } else {
      createReadStream('index-01.html').pipe(res)
    }
})

app.post('/login', (req, res) => {
  const username = req.body.username
  const password = USERS[username]

  if (req.body.password === password) {
    res.cookie('username',username)
    res.send('welcome ' + username + '!')
  } else {
    res.send('fail!')
  }
})


app.listen(4000)
