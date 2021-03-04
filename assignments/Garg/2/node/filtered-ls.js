const fs = require('fs')
const path = require('path')

const dir_name = process.argv[2]
const extn = '.'+ process.argv[3]

fs.readdir(dir_name,function(err,dir){
	if (err){
	    return console.log(err)
	}
    dir.forEach(function (file){
    if (path.extname(file) === extn){
        console.log(file)
    }
})
	}
)


