const fs = require('fs');
var b = fs.readFileSync(process.argv[2]);
var str = b.toString();
console.log(str.split("\n").length-1);