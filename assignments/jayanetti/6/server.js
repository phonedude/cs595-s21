const express = require('express')
const { createReadStream } = require('fs')
const fs = require('fs')
const http = require("http") 
const md5 = require('md5')
const app = express()
const port = 5000

app.get('/', (req, res) => 
	{
		//Collecting the features
	    feature1 = req.get('User-Agent')
	    feature2 = req.get('Accept')
	    feature3 = req.get('Accept-Language')
	    feature4 = req.get('Accept-Encoding')

		//Concat features to creat a string
		var fingerprint = feature1.concat(feature2, feature3, feature4)

		//Hashing the fingerprint string using MD5  
	    var fingerprint_id = md5(fingerprint)

	    //Serving the file
		stream = createReadStream('files/1.html')
		stream.pipe(res)

		//console.log(visitorslog)
		fs.readFile('access.log', function(err, data) {
		    if(err) throw err;	
	        var array = data.toString().split("\n")
			array.pop()

	    	var found = array.find(a =>a.includes(fingerprint_id));

	    	if (found) 
	    	{

    			//already visited
	    		for(i = array.length-1; i >= 0; i--) {
	    		const obj = JSON.parse(array[i])

	    		if(obj['id'] == fingerprint_id)
	    		{
	    			visitor = obj
			    	visitor['last-visit'] = new Date()
			    	visitor['visit-count'] = visitor['visit-count'] + 1
			    	log_line = (JSON.stringify(visitor)).concat('\n')
			    	fs.appendFile('access.log', log_line, err => {
					  if (err) {
					    console.error(err)
					    return
					  }
	    		})
			    	console.log(`ID: ${fingerprint_id}, User: existing, Previous-Visits:${visitor['visit-count']}`)
			    	return

	    		}

	    	}}
	    	else 
	    	{	    			
	    			//new user
			    	visitor = {}
			    	visitor['id'] = fingerprint_id
			    	visitor['user-agent'] = feature1
			    	visitor['accept'] = feature2
			    	visitor['accept-language'] = feature3
			    	visitor['accept-encoding'] = feature4
			    	visitor['visit-count'] = 1
			    	visitor['last-visit'] = new Date()
			    	log_line = (JSON.stringify(visitor)).concat('\n')
			    	fs.appendFile('access.log', log_line, err => {
					  if (err) {
					    console.error(err)
					    return
					  }
	    		})

			    	console.log(`ID: ${fingerprint_id}, User: new`);	
	    	}	
			    	


			})
})

app.listen(port, ()	 => {
  console.log(`Server is listening at http://localhost:${port}`)
})

app.use(express.static('files'))



