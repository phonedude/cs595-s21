const fs = require('fs')
const path = require('path')

const ext = process.argv[3]
const dir = process.argv[2]

fs.readdir(dir, function (err, files) {
    if(err)
        return console.error(error);
    else {        
        files.forEach((file) => {
            if(path.extname(file) === '.' + ext)
                console.log(file);
        })
    }    
})