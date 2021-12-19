
     
const map = require('through2-map');
const http = require('http');
const fs = require('fs');
const server = http.createServer(function (req, res) {
    req.pipe(map(function (chunk) {
        return chunk.toString().toUpperCase()
      })).pipe(res);
  
})
server.listen(process.argv[2]);