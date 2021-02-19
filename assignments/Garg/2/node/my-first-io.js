const fs = require('fs')

const file = fs.readFileSync(process.argv[2]).toString()

const lines =  file.split('\n')

console.log(lines.length -1)