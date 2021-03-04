var http = require('http')
var url = process.argv[2]
var body = ''
http.get(url, function (response) {
  response.on('data', function (chunk) {
    body += chunk
  })
  response.on('end', function () {
    console.log(body.length)
    console.log(body)
  })
})