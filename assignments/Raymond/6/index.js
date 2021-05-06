const express = require('express')
const { createReadStream } = require('fs')
const fs = require('fs')
const app = express()
const md5 = require('md5')

var log = require('C:/Users/Louis/OneDrive/Desktop/6/fingerprints.json')

app.get('/', (req, res) => 
		{
		var userHash = md5(req.headers.accept+req.headers['user-agent']);
		var date = new Date();

	    if (log[userHash]) 
	    	{
		    	var user = log[userHash]['user-agent']
                log[userHash]['last-visit'] = date
		    	console.log('Returning User!');

	    	}	    
	    else 
	    	{
		    	console.log('New User');
		    	stream = createReadStream('index.html');
	    		stream.pipe(res);
		    	log[userHash] = req.headers;
		    	log[userHash]['last-visit'] = date	  



	    	}

	fs.writeFile('fingerprints.json', JSON.stringify(log), (error) => 
    		{ 
			    if (error) { 
			    console.log(error); 
			  } 
			}); 	
		});

app.listen(4000)