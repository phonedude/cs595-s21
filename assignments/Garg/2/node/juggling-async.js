const http = require('http');
const inp_URLs = process.argv

for(i=2; i < inp_URLs.length; i++){
	URL = process.argv[i]
	http.get(URL, (res) => {
			res.setEncoding('utf8')
			let rawData = ''
	 		res.on('data', (chunk) => { rawData += chunk; }) 
	 		res.on('end', () => {
	    console.log(rawData)
	  })
		}
	)
}

