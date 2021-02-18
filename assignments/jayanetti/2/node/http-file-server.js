const http = require('http')  
const fs = require('fs')  
const port = process.argv[2]
const path = process.argv[3]

const server = http.createServer(function (req, res) {  
src = fs.createReadStream(path)
src.pipe(res)
})  
server.listen(port)  


