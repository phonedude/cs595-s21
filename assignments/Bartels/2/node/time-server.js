net = require('net');

function zeroFill(i) {
  return (i < 10 ? '0' : '') + i;
}

function dateTime () {
  d = new Date();
  return d.getFullYear() + '-'
    + zeroFill(d.getMonth() + 1) + '-'
    + zeroFill(d.getDate()) + ' '
    + zeroFill(d.getHours()) + ':'
    + zeroFill(d.getMinutes());
}

server = net.createServer(function (socket) {
  socket.end(dateTime() + '\n');
})

server.listen(Number(process.argv[2]))
