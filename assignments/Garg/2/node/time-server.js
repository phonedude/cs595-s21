const net = require('net')  
var strftime = require('strftime')

const server = net.createServer(function (socket) {  
// socket handling logic  
d = new Date()
data = strftime('%F %R\n', d)
socket.end(data)
})  
server.listen(process.argv[2])