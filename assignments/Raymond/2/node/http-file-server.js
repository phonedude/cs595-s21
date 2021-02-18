var http = require('http')
var fs = require('fs')
var port = process.argv[2]
var file = process.argv[3]
http.createServer(function (request, response) {
  fs.createReadStream(file).pipe(response)
}).listen(+port, function () {
  console.log('Server listening on http://localhost:%s', port)
})