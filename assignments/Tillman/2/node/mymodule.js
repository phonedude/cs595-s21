var fs = require('fs');
var path = require('path');
var exportFunction = function(directory, filter, callback)
{
fs.readdir(directory, function(err,list)
{

    if(err){return callback(err);}
        var result = [];
        for(var i =0; i<list.length;i++)
        {
           if(path.extname(list[i])==="."+filter){
           result.push(list[i]);}
        }
    return callback(null, result);
});}
module.exports = exportFunction;