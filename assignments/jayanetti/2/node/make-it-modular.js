const mymodule = require('./mymodule.js')  

const folder = process.argv[2]
const ext =  process.argv[3]

function print(err,files) {
  for (let i = 0; i < files.length; i++) {  
  console.log(files[i])
  }
  }

mymodule(folder,ext,print)
