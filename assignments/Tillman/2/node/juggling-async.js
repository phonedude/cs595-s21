const http = require('http');
const bl = require('bl')
http.get(process.argv[2], function(response){
    response.setEncoding("utf8");
    response.pipe(bl(function (err, data) {
    console.log(data.toString());
    http.get(process.argv[3], function(response){
        response.setEncoding("utf8");
        response.pipe(bl(function (err, data_) {
        console.log(data_.toString());
        http.get(process.argv[4], function(response){
            response.setEncoding("utf8");
            response.pipe(bl(function (err, data__) {
            console.log(data__.toString());
        
        
        }))
        })
    
    
    }))
    })

}))
})