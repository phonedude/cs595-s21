const http = require("http") 
const port = 4000

const express = require('express')
const { createReadStream } = require('fs')

const app = express()

app.use(function(req, res, next) {
	// Allow all origins
	res.header("Access-Control-Allow-Origin", "*");
	next();
  });

app.get('/special.json', (req, res) => {
	createReadStream('special.json').pipe(res)
  })

app.listen(port, (error) => {
	if (error) {
		console.log('Something went wrong', error)
	}
	else{
		console.log(`Server is listening at http://localhost:${port}`)
	}
})