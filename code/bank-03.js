const express = require('express')
const { createReadStream } = require('fs')
const bodyParser = require('body-parser')
const cookieParser = require('cookie-parser')
const { randomBytes } = require('crypto')

const app = express()
app.use(bodyParser.urlencoded({extended: false}))
app.use(cookieParser())

const USERS = {
  alice: '123',
  bob: 'eagle'
}

const BALANCES = {
  alice: 500,
  bob: 100
}

const SESSIONS = {} // sessionId -> username

app.get('/', (req, res) => {
    const sessionId = req.cookies.sessionId
    const username = SESSIONS[sessionId]
    if (username) {
      // note: use backquotes `` for ${var} trick
      res.send(`Hi ${username}! Your balance is $${BALANCES[username]} <p>You can <a href=/logout>logout</a>`)
    } else {
      createReadStream('index-01.html').pipe(res)
    }
})

app.post('/login', (req, res) => {
  const username = req.body.username
  const password = USERS[username]

  if (req.body.password === password) {
    const sessionId = randomBytes(16).toString('hex')
    SESSIONS[sessionId] = username
    res.cookie('sessionId',sessionId)
    res.redirect('/')
  } else {
    res.send('fail!')
  }
})

app.get('/logout', (req,res) => {
   const sessionId = req.cookies.sessionId
   delete SESSIONS[sessionId]
   res.clearCookie('sessionId')
   res.redirect('/')
})

app.listen(4000)
