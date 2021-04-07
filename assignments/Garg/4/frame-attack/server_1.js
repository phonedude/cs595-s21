const http = require("http") 
const port = 8000

const express = require('express')
const { createReadStream } = require('fs')

const app = express()


app.get('/', (req, res) => {
    stream = createReadStream('evil_site.html')
    stream.pipe(res)  
})

app.get('/1', (req, res) => {
    stream = createReadStream('evil_site1.html')
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