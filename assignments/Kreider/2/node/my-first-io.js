const fs = require('fs')
const data = fs.readFileSync(process.argv[2])
const info = data.toString()
const lines = info.split('\n').length -1
console.log(lines)
