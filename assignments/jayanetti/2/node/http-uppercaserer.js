var http = require('http')
const map = require('through2-map')  
const port = process.argv[2]

const server = http.createServer(function (req, res) {  

src = req.pipe(map(function (chunk) {  
	return chunk.toString().toUpperCase() 
}))
src.pipe(res)
})  
server.listen(port)  

