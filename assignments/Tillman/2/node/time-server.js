const net = require('net')
const server = net.createServer(function (socket) {
  // socket handling logic
  
  var date = new Date();
  var month = date.getMonth();
  if(month.toString().length==1)month = "0" + (Number(month.toString())+1).toString();
  var day = date.getDate();
  if(day.toString().length==1)day = "0" + day.toString();

  var data = date.getFullYear() + "-" + month + "-" + day + " " + date.getHours() + ":" + date.getMinutes() + "\n";
  
  socket.end(data);
})
server.listen(process.argv[2]);