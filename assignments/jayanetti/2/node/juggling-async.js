var http = require('http')
const bl = require('bl') 

var url1 = process.argv[2]
var url2 = process.argv[3]
var url3 = process.argv[4]

var results = []
let count = 0
    
function printResults () {
	for (let i = 0; i < 3; i++) {
	console.log(results[i])
	}
}

function get_content (i,url_list) {
	http.get(url_list[i], function (response) {
	response.pipe(bl(function (err, data) {
  	if (err) {
    		return console.error(err)
  	}

  	results[i] = data.toString()
  	count = count+1
  if (count === 3) {
    print()
  }
}))
})
}

for (let i = 0; i < 3; i++) {
let url_list = [url1,url2,url3]
get_content(i,url_list)
}

