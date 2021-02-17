var http = require('http')
var url = require('url')
const port = process.argv[2]

var path = {
  "/api/parsetime": function(URL) {
    d = new Date(URL.query.iso)
    return {
      hour: d.getHours(),
      minute: d.getMinutes(),
      second: d.getSeconds()
    };
  },
  "/api/unixtime": function(URL) {
    return {unixtime: (new Date(URL.query.iso)).getTime()}
  }
}

server = http.createServer(function(request, response) {
  URL = url.parse(request.url, true)
  resource = path[URL.pathname]
  if (resource) {
    response.writeHead(200, {"Content-Type": "application/json"})
    response.end(JSON.stringify(resource(URL)))
  }
})

server.listen(port)
