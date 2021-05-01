const express = require('express')
const {createReadStream} = require('fs')
const fs = require('fs')
const md5 = require('md5');
const app = express()

var log = require('/Users/korikettner/Desktop/Github/cs595-s21/assignments/Kettner/6/log.json');


app.get('/', (req, res) => 
		{
 
		var userHash = md5(req.headers.accept+req.headers['user-agent']);
		var date = new Date();

	    if (log[userHash]) 
	    	{
		    	var user = log[userHash]['user-agent']
			log[userHash]['last-visit'] = date
		    	console.log('User has visited before.');

	    	}	    
	    else 
	    	{
		    	console.log('User is a new visitor!');
		    	stream = createReadStream('index.html');
	    		stream.pipe(res);
		    	log[userHash] = req.headers;
		    	log[userHash]['last-visit'] = date	  



	    	}

	fs.writeFile('log.json', JSON.stringify(log), (error) => 
    		{ 
			    if (error) { 
			    console.log(error); 
			  } 
			}); 	
		});


app.listen(8000)

