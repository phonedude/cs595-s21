const http = require('http')

let url = process.argv[2]

http.get(url, function callback (response) {
    response.setEncoding('utf-8').on('data', function (data) { console.log(data) })
}).on('error', console.error)