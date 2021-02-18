const fs = require('fs')
const content = fs.readFileSync(process.argv[2])
const text = content.toString()
const len = text.split('\n').length
const lines = len - 1
console.log(lines)

