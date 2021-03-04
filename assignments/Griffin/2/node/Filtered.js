var fs = require('fs')
var path = require('path');

var directory = process.argv[2];
var ext = '.' + process.argv[3];

fs.readdir(directory, function (err, files) {
    if (err) {
        return console.log(err);
    }

    files.forEach(function(file) {
        if (path.extname(file) === ext) {
            console.log(file);
        };
    });
});