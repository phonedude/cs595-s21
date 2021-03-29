const express = require('express')
const { createReadStream } = require('fs')
const bodyParser = require('body-parser')

const app=express() 
app.use(bodyParser.urlencoded({extended:false}))
    app.get('/theC',(req,res)=>{
        createReadStream('cookie-setter.html').pipe(res)
    })
    app.listen(4001)