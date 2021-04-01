const fs= require('fs')
const path = require('path')
 
const fName = process.argv[2]
const exten = '.' + process.argv[3]
fs.readdir(fName, function (err,files){
    if (err) return console.error(err)
    files.forEach(function (file){
        if (path.extname(file) === exten){
            console.log(file)
        }
    })
})