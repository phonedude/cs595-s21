http = require('http');
url = require('url');
port = process.argv[2];

function parsetime (time) {
	return {
		hour: time.getHours(),
		minute: time.getMinutes(),
		second: time.getSeconds()
  	}
}

function unixtime (time) {
	return { unixtime : time.getTime() }
}

server = http.createServer(function (req, res) {
	parsedUrl = url.parse(req.url, true);
	time = new Date(parsedUrl.query.iso);
	var result;

	if (/^\/api\/parsetime/.test(req.url))
	result = parsetime(time);
	else if (/^\/api\/unixtime/.test(req.url))
	result = unixtime(time);

	if (result) {
		res.writeHead(200, { 'Content-Type': 'application/json' })
		res.end(JSON.stringify(result));
	} else {
		res.writeHead(404);
		res.end();
	}
})
server.listen(Number(port));
