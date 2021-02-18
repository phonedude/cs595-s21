const http = require('http')

let url = process.argv[2]
let chars = 0;
let messages = '';

http.get(url, function callback (response) {
    response.setEncoding('utf-8').on('data', function (data) { 
       // console.log(messages)
        messages += data;
        chars += data.length;
    }).on('end', function () {
        console.log(chars);
        console.log(messages);
    })
})