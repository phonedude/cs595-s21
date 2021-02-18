var fs = require('fs');
var path = require('path');

module.exports = function (dir, extensionFilter, callback) {

  fs.readdir(dir, function (err, list) {
    if (err)
      return callback(err);

    list = list.filter(function (file) {
      return path.extname(file) === '.' + extensionFilter;
    })

    callback(null, list);
  })
}
