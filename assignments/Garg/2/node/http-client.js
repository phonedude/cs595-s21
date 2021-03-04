const http = require('http');
const URL = process.argv[2]

http.get(URL, (res) => {
		res.setEncoding('utf8')
 		res.on('data', (data) => 
    { 
      console.log(data)
     }) 

    }
  )
	