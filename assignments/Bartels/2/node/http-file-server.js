http = require('http');
fs = require('fs');

port = process.argv[2];
file = process.argv[3];

server = http.createServer(function (request, response) {
	fs.createReadStream(file).pipe(response);
})

server.listen(Number(port));
