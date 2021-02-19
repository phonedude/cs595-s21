const http = require('http')
const fs= require ('fs')

const inbound = process.argv[2]
const data = process.argv[3]

http.createServer(function (request,response){
    fs.createReadStream(data).pipe(response) 
    })
    .listen(+inbound, function (){
        console.log('Serverlistening on HTTP:local//host:%s', inbound)
    })
