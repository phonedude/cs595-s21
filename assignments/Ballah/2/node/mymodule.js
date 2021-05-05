var fs = require('fs')
var path = require('path')

function filtereddir(folder,ext,cb){
fs.readdir(folder, function (err, files) {
  if (err) return cb(err)
  let filteredfiles = []
  files.forEach(function(file) {
      if (path.extname(file) === ext) {
          filteredfiles.push(file)
      }
  })
  cb(null,filteredfiles)
})
}

module.exports = filtereddir