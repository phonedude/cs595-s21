module.exports = filter
var path = require('path');
const fs = require('fs')

function filter(folder,ext,callback)
	{
	var extension = "." + ext
	fs.readdir(folder, function doneReading(error, files) {	
		if (error){
      callback(error, null)

		}
	else{
	result = [] 
	files.forEach(function(file){
		mime = path.extname(file)
		if (mime === extension) {
			result.push(file)
		}
	})	
	callback(null,result)
	}}
	)	
	}
