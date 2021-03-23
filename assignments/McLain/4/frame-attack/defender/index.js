const express = require('express')
const helmet = require('helmet')
const app = express()
const port = 4000

// https://expressjs.com/en/starter/static-files.html
app.use('/html', express.static('html'))

app.get('/', (req, res) => {
  res.cookie('cs595s21', 'stealthiscookie', {sameSite: 'lax', path: '/'})
  res.sendFile('html/index.html', {root: __dirname })
})

app.get('/denied', (req, res) => {
  // If not in Iframe or IFrame referer is same domain, return cookie
  if(!req.headers.referer || req.headers.referer.startsWith(`http://localhost:${port}`)) 
    res.cookie('cs595s21', 'nottoday', {sameSite: 'lax', path: '/'});
  else
    res.clearCookie('cs595s21');
    
  res.setHeader('X-Frame-Options', 'SAMEORIGIN');
  res.sendFile('html/nonono.html', {root: __dirname })
})

app.get('/allowed', (req, res) => {
  res.sendFile('html/yesyesyes.html', {root: __dirname })
})

app.listen(port, () => {
  console.log(`Frame defender app listening at http://localhost:${port}`)
})