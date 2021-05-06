const http = require('http');
const bl = require('bl')
http.get(process.argv[2], function(response){
    response.setEncoding("utf8");
    response.pipe(bl(function (err, data) { console.log(data.length);
    console.log(data.toString());}))
})