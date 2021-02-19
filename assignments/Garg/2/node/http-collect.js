const http = require('http');
const URL = process.argv[2]

http.get(URL, (res) => {
		res.setEncoding('utf8')
		let rawData = ''
 		res.on('data', (chunk) => { rawData += chunk; }) 
 		res.on('end', () => {
    console.log(rawData.length)
    console.log(rawData)
  })
	}
)