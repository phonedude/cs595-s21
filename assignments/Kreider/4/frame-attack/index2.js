const express = require('express')
const { createReadStream } = require('fs')
const bodyParser = require('body-parser')

const app=express() 
app.use(bodyParser.urlencoded({extended:false}))

app.get('/da',(req,res)=>{
    createReadStream('cookie_robber.html').pipe(res)
})
app.listen(4002)