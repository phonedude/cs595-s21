const fs = require('fs')

const str = fs.readFileSync(process.argv[2]).toString();

const len = str.split('\n').length - 1

console.log(len)