const http = require("http") 
const port = 8000

const express = require('express')
const { createReadStream } = require('fs')

const app = express()

app.use(function(req, res, next) {
	res.header("Content-Security-Policy", "frame-src 'self'; script-src 'self' 'unsafe-inline'");
	next();
  });

app.get('/', (req, res) => {
    stream = createReadStream('framesite.html')
    stream.pipe(res)  
})

app.listen(port, (error) => {
	if (error) {
		console.log('Something went wrong', error)
	}
	else{
		console.log(`Server is listening at http://localhost:${port}`)
	}
})