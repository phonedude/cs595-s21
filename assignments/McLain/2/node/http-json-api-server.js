const http = require('http')
const url = require('url')
const port = Number(process.argv[2])

// api/parsetime
function parseTime (time) {
  return {
    hour: time.getHours(),
    minute: time.getMinutes(),
    second: time.getSeconds()
  }
}

// api/unixtime
function unixTime (time) {
  return { 
      unixtime : time.getTime() 
    }
}

var server = http.createServer(function (request, response) {
  const parseUrl = url.parse(request.url, true)
  const time = new Date(parseUrl.query.iso) // ISO param
  
  const result = (request.url.includes('parsetime')) ? parseTime(time) : (request.url.includes('unixtime')) ? unixTime(time) : undefined;

  if (result) {
    response.writeHead(200, { 'Content-Type': 'application/json' })
    response.end(JSON.stringify(result))
  } else {
    res.writeHead(404)
    res.end()
  }
})
server.listen(port)