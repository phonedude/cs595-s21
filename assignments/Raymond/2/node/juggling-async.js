const http = require('http')
let messages = []
let count = 0
for (let i = 2; i < process.argv.length; i++) {
    messages[i - 2] = '';
http.get(process.argv[i], function callback(response) {
            response.setEncoding('utf-8').on('data', function (data) {
               messages[i - 2] += data
            })
            .on('end', function () {
                count++;

                if(count === (process.argv.length - 2))
                    messages.forEach((message) => {
                        console.log(message);
                    })
            });
        })
    }