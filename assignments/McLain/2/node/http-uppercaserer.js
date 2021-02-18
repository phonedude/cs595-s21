const net = require('http')
const map = require('through2-map')
const port = process.argv[2]

const server = net.createServer(function (request, response) {
    request.pipe(map((chunk) => {
        //console.log(chunk.toString())
            return chunk.toString().toUpperCase();
        })
    ).pipe(response);
  })

server.listen(Number(port))