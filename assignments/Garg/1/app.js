const http = require("http") 
const port = 8000

const express = require('express')
const { createReadStream } = require('fs')
const app = express()

const bodyParser = require('body-parser')
app.use(bodyParser.urlencoded({extended: false}))

var favicon = require('serve-favicon')
app.use(favicon(__dirname + '/public/images/favicon.ico'))

/*const server = http.createServer(function(req,res){
	console.log('Request:' + req.url);
	res.write('Welcome')
	res.end()
})*/

app.get('/', (req, res) => {
    createReadStream('index.html').pipe(res)
})

app.get('/arijitsingh', (req, res) => {
	res.send("Arijit Singh is a singing sensation in India. He has a soulful voice. He sings these complex songs with such ease and conveys the emotions in the songs beautifully. Link to some of his songs on youtube: https://www.youtube.com/watch?v=EiiyYkae33k&ab_channel=T-Series")
})

app.get('/mandalorian.html', (req, res) => {
	res.send("The Mandalorian is the first live-action series in the Star Wars franchise. It shows the events after Return of the Jedi (1983) where a lone bounty hunter (Mandalorian) travels in the outer reaches of the galaxy to protect the foundling (baby Yoda).")
})

app.get('/soul', (req, res) => {
	res.send("Soul is a new feature film by Pixar Animation Studios. It's a story of a music teacher Joe Gardner. He dies just before his big break as a jazz musician. So, he tries to come back to life and reunite his soul and body. It's a beautiful movie about life's purpose. Link to trailer: https://www.youtube.com/watch?v=xOsLIiBStEs")
})

app.listen(port, (error) => {
	if (error) {
		console.log('Something went wrong', error)
	}
	else{
		console.log(`Server is listening at http://localhost:${port}`)
	}
})
