var http = require('http')
var host = process.argv[2]
var body = ''

http.get(host, function (response) {
  response.on('data', function (chunk) {
    body += chunk
  })
  response.on('end', function () {
    console.log(body.length)
    console.log(body)
  })
})