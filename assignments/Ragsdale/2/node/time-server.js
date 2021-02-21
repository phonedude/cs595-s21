const net = require('net');
const moment = require('moment');

const port = process.argv[2];

const server = net.createServer(socket => {
	const time = moment().format('YYYY-MM-DD hh:mm');
	socket.write(time);
	socket.end('\n');
});

server.listen(port);


