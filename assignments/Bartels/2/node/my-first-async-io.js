const fs = require('fs');

buffer = fs.readFile(process.argv[2], function(err, data) {
	newlines = data.toString().split('\n');
	console.log(newlines.length - 1);
})
