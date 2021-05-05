const mymodule = require('./mymodule.js') 
mymodule(".",".js",function(err,data){
if (err) {
console.log(err)
return
}

console.log(data)
})