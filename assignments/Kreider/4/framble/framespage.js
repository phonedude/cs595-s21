
const express = require('express')
const { createReadStream } = require('fs')
const bodyParser = require('body-parser')

const app=express() 
app.use(bodyParser.urlencoded({extended:false}))
    app.get('/',(req,res)=>{
        createReadStream('homepage.html').pipe(res)
    })
   
   app.get('/frame1-10', (req,res) =>{
       createReadStream('frames1_10.html').pipe(res)
   }) 
   app.get('/frame10-20', (req,res) =>{
        createReadStream('frames10_20.html').pipe(res)
    })

    app.get('/frame20-30', (req,res) =>{
        createReadStream('frames20_30.html').pipe(res)
    })
    app.get('/frame30-40', (req,res) =>{
        createReadStream('frames30_40.html').pipe(res)
    })
    app.get('/frame40-50', (req,res) =>{
        createReadStream('frames40_50.html').pipe(res)
    })
    app.get('/frame50-60', (req,res) =>{
        createReadStream('frames50_60.html').pipe(res)
    })
    app.get('/frame60-70', (req,res) =>{
        createReadStream('frames60_70.html').pipe(res)
    })
    app.get('/frame70-80', (req,res) =>{
        createReadStream('frames70_80.html').pipe(res)
    })
    app.get('/frame80-90', (req,res) =>{
        createReadStream('frames80_90.html').pipe(res)
    })
    app.get('/frame90-100', (req,res) =>{
        createReadStream('frames90_100.html').pipe(res)
    })
  

app.listen(4000)