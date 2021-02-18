const fs = require('fs')
function calc_lines(callback){ 
	fs.readFile(process.argv[2], function doneReading(err, content) {
	const text = content.toString()
	const len = text.split('\n').length
	lines = len - 1
	callback()
  })
 }

function print() {
  console.log(lines)
}

calc_lines(print)

//SOLUTION IN TUTORIAL
/*    'use strict'
    const fs = require('fs')
    const file = process.argv[2]
    
    fs.readFile(file, function (err, contents) {
      if (err) {
        return console.log(err)
      }
      // fs.readFile(file, 'utf8', callback) can also be used
      const lines = contents.toString().split('\n').length - 1
      console.log(lines)
    })*/

