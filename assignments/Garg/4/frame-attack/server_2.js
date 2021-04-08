const http = require("http") 
const express = require('express')
const cookieParser = require('cookie-parser')
const { createReadStream } = require('fs')

const port = 5000
const app = express()
app.use((cookieParser()))


app.get('/', (req, res) => {
	res.send(
	'<h2>Pages:</h2><li><a href="/unsafe">unsafe_site.html</a></li><li><a href="/safe">safe_site.html</a></li>'
	)  
})


app.get('/unsafe', (req, res) => {
	res.cookie('login','SecretAdmin')
    stream = createReadStream('unsafe_site.html')
    stream.pipe(res)  
})

app.get('/safe', (req, res) => {
	res.cookie('login','SecretAgent', {httpOnly: true, sameSite:'strict'})
	stream = createReadStream('safe_site.html')
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