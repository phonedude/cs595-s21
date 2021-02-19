const fs = require('fs')
const data = process.argv[2]

fs.readFile(data,function(err,file){
if (err){
    return console.log(err)
}

const lines =  file.toString().split('\n')

console.log(lines.length -1)
})
