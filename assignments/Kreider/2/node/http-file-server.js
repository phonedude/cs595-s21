var http = require('http')
var fs= require ('fs')

var inbound = process.argv[2]
var data = process.argv[3]

http.createServer(function (request,response){
    fs.createReadStream(data).pipe(response) 
    })
    .listen(+inbound, function (){
        console.log('Serverlistening on HTTP:local//host:%s', inbound)
    })
