const fs = require('fs')
const path = require('path')
const myModule = require('./mymodule')

const ext = process.argv[3]
const dir = process.argv[2]

myModule(dir, ext, function(err, files) {
    if(err)
        console.error(err)
    else {
        files.forEach(file => {
            console.log(file)
        });
    }

})
