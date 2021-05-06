const fs = require('fs');
const path = require('path');
const mymodule = require('./mymodule.js');
mymodule(process.argv[2], process.argv[3], function callback(err, data){
  if(err){return callback(err);}
  var result = [];
    for(var i =0; i<list.length;i++)
    {
       if(path.extname(list[i])==="."+process.argv[3]){
       console.log(list[i]);
       result.push(list[i]);}
    }
return result;
}

);