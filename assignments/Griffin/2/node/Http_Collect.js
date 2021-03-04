var http = require('http')
var url = process.argv[2]

http.get(url, function (response) {
  var chunks = []
  response.setEncoding('utf8')
  response.on('data', chunks.push.bind(chunks))
  response.on('error', console.error)
  response.on('end', function () {
    var result = chunks.join('')
    console.log(result.length)
    console.log(result)
  })
})