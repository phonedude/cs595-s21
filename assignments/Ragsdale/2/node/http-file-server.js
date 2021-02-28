const http = require('http');
const fs = require('fs');

const port = process.argv[2];
const file = process.argv[3];

const server = http.createServer((req, res) => {
	const stream = fs.createReadStream(file, {encoding: 'utf8' });
	stream.pipe(res);
});

server.listen(port);
