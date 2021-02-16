const fs = require('fs')
const path = require('path')

const dir_path = process.argv[2]
const filter_mime = '.' + process.argv[3]
//console.log(dir_path)
//console.log(filter_mime)


function filter(callback){ 
	fs.readdir(process.argv[2], function doneReading(err, list) {	
	files = list	
	callback()	
  })	
 }

function print() {
  const filtered = files.filter(function evenNumbers(file){  
  mime = path.extname(file)  
  return mime === filter_mime
  })
  for (let i = 0; i < filtered.length; i++) {  
  console.log(filtered[i])
  }
  }

filter(print)

//SOLUTION IN TUTORIAL
/* 
    const fs = require('fs')
    const path = require('path')
    
    const folder = process.argv[2]
    const ext = '.' + process.argv[3]
    
    fs.readdir(folder, function (err, files) {
      if (err) return console.error(err)
      files.forEach(function (file) {
        if (path.extname(file) === ext) {
          console.log(file)
        }
      })
    })
*/
    

