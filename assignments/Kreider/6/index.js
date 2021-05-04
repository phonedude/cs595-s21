
const express = require('express')
const {createReadStream} = require('fs')
const fs = require('fs')
const md5 = require('md5');
const app = express()

var log = require('./log.json');

app.get('/', (req, res) => {
	let attributes = []

	createReadStream('fingerprintpage.html').pipe(res)

	attributes.push(req.get('Accept-Language'))
	attributes.push(req.get('Accept-Encoding'))
	attributes.push(req.get('Accept'))
	attributes.push(req.get('User-Agent'))

	let fingerprint = attributes.toString()
	let info = md5(fingerprint)
	let thedatenow = new Date()

	if(log[info]) {
		log[info]['last-visit'] = thedatenow
		console.log('we already got your prints chief')
        
	}
	else {
		console.log('OH a new print to my collection')
		log[info] = req.headers
		log[info]['last-visit'] = thedatenow
	}

	fs.writeFile('log.json', JSON.stringify(log), (err) => { 
		if (err) { 
			console.log(err)
		} 
	}); 	
});

app.listen(4000)
	