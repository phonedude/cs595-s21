const net = require('http')
const fs = require('fs')
const port = process.argv[2]
const file = process.argv[3]

const server = net.createServer(function (request, response) {
    response.end(fs.readFileSync(file))
  })

server.listen(Number(port))