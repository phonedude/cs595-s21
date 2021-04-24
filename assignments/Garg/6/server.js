const port = 8000
const inet = '192.168.0.8'

const http = require("http") 
const express = require('express')
const {createReadStream} = require('fs')
const fs = require('fs')
const md5 = require('md5');
const app = express()

var visitorslog = require('./visitorslog.json');


app.get('/', (req, res) => 
	{
	    var fingerprint = [];

		fingerprint.push(req.headers['x-forwarded-for'] || req.connection.remoteAddress);
	    fingerprint.push(req.get('Accept'));
	    fingerprint.push(req.get('Accept-Language'));
	    fingerprint.push(req.get('Accept-Encoding'));
	    fingerprint.push(req.get('User-Agent'));

	    var fingerprint = fingerprint.toString(); 
	    var client_id = md5(fingerprint);

	    if (visitorslog[client_id]) 
	    	{
		    	//oldclient
		    	var ua = visitorslog[client_id]['user-agent']

		    	//Cloaking
		    	if (ua.includes('Googlebot'))
		    	{
					stream = createReadStream('3.html');
		    		stream.pipe(res);

		    	} else if (ua.includes('Firefox')){
				
					stream = createReadStream('2.html');
		    		stream.pipe(res);
		    		
		    	} else {

			    	stream = createReadStream('1.html');
		    		stream.pipe(res);
		    	}

		    	visitorslog[client_id]['last-visit'].push(new Date());
		    	var visit_count = visitorslog[client_id]['last-visit'].length;
		    	console.log(`${client_id} has visited before, visit_count:${visit_count}`);

	    	}	    
	    else 
	    	{
		    	//newclient
		    	console.log(`${client_id} is a new visitor!`);

		    	stream = createReadStream('index.html');
	    		stream.pipe(res);

		    	visitorslog[client_id] = req.headers;
		    	visitorslog[client_id]['last-visit'] = [new Date()];	  



	    	}

    	fs.writeFile('visitorslog.json', JSON.stringify(visitorslog), (err) => 
    		{ 
			    if (err) { 
			    console.log(err); 
			  } 
			}); 	

	})


app.listen(port, inet, (error) => 
	{
		if (error) {
			console.log('Something went wrong', error)
		}
		else{
			console.log(`Server is listening at http://${inet}:${port}`)
		}
	})