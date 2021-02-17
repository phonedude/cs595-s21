const net = require('net')
const port = process.argv[2]

function addZero(d) {
    return (d < 10 ? '0' : '') + d.toString();
}

function writeDate() {
    let date = new Date();
    const year = date.getFullYear().toString();
    const month = addZero(date.getMonth() + 1);
    const day = addZero(date.getDate());
    const hours = addZero(date.getHours());
    const minutes = addZero(date.getMinutes());

    return year + '-' + month + '-' + day + ' ' + hours + ':' + minutes + '\n';
}

const server = net.createServer(function (socket) {
    socket.end(writeDate());
  })

server.listen(Number(port))