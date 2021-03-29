var mymodule = require ('./mymodule.js')
var fname = process.argv[2]
var ext = process.argv[3]

mymodule(fname,ext, function (err,list){
    if(err) return console.error('whoops', err)
    
    list.forEach(function (file)  {
        console.log(file)
    })
})