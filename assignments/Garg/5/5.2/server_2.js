const http = require("http") 
const port = 4000

const express = require('express')
const { createReadStream } = require('fs')

const app = express()

app.use(function(req, res, next) {
	// Allow all origins
	res.header("Access-Control-Allow-Origin", "*");
	res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE');
    res.header('Access-Control-Allow-Headers', 'Content-Type');	
	// Custom Headers
	res.header('X-CS595s21-movie', 'Soul')
    res.header('X-CS595s21-tvseries', 'Mandalorian')
    res.header('X-CS595s21-singer', 'Arijit Singh') 

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