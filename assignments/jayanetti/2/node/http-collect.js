var http = require('http')
const bl = require('bl')
 

var url = process.argv[2]

http.get(url, function(res) {
  res.setEncoding("utf8")
  res.pipe(bl(function (err, data) {
  str = data.toString()
  n = str.length
  console.log(n)
  console.log(str)
  res.on('error', console.error)
  }))  
  });


