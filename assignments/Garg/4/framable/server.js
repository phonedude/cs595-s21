const http = require("http") 
const port = 8000

const express = require('express')
const bodyParser = require('body-parser');
const { createReadStream } = require('fs')


const app = express()


app.use("/", express.static(__dirname + "/html_files"));


app.listen(port, (error) => {
	if (error) {
		console.log('Something went wrong', error)
	}
	else{
		console.log(`Server is listening at http://localhost:${port}`)
	}
})