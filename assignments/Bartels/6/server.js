const express = require('express')
const { createReadStream } = require('fs')
const fs = require('fs')
const app = express()
const md5 = require('md5')
var visitorLog = require('./fingerprints.json')

app.get('/', (req, res) => {
	let attributes = []
	
	createReadStream('index.html').pipe(res)
	
	attributes.push(req.get('Accept-Language'))
	attributes.push(req.get('Accept-Encoding'))
	attributes.push(req.get('Accept'))
	attributes.push(req.get('User-Agent'))
	
	let fingerprint = attributes.toString()
	let id = md5(fingerprint)
	let currentDate = new Date()
	
	if(visitorLog[id]) {
		visitorLog[id]['last-visit'] = currentDate
		console.log('Client is a returning visitor')
	}
	else {
		console.log('Client is a new visitor')
		visitorLog[id] = req.headers
		visitorLog[id]['last-visit'] = currentDate
	}
	
	fs.writeFile('fingerprints.json', JSON.stringify(visitorLog), (err) => { 
		if (err) { 
			console.log(err)
		} 
	}); 	
});

app.listen(4000)