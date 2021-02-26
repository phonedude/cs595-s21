const http = require('http');
const url = require('url');
const moment = require('moment');

const port = process.argv[2];

const server = http.createServer((req, res) => {
const { pathname, query } = url.parse(req.url, true);
	res.writeHead(200, { 'Content-Type': 'application/json' });

	if (pathname === '/api/parsetime') {
		return res.end(JSON.stringify({
			hour: moment(query.iso).hour(),
			minute: moment(query.iso).minute(),
			second: moment(query.iso).second()
		}))
	}

	if (pathname === '/api/unixtime') {
		return res.end(JSON.stringify({
			unixtime: Number(moment(query.iso).format('x'))
		}));
	}
	res.writeHead(404, {'Content-Type': 'application/json'});
	res.end(JSON.stringify({
		success: false,
		message: '${pathname} is not a valid endpoint'
	}));
});

server.listen(port);

