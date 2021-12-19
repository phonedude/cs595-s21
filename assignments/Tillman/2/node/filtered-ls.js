var fs = require('fs');
var path = require('path');
var directory = process.argv[2];
var filter = process.argv[3];
fs.readdir(directory, function(err, list){
  
    for(var i =0; i<list.length;i++)
    {
       if(path.extname(list[i])==="."+filter)
       console.log(list[i]);
    }

});