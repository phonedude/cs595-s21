const fs = require('fs')
const path = require('path')

module.exports = function(dir, ext, callback) {
    let list = []

    fs.readdir(dir, function (err, files) {
        if(err)
           return callback(err)
                
        files.forEach((file) => {
            if(path.extname(file) === '.' + ext)
                list.push(file)
        })
        return callback(null, list)        
    })
}