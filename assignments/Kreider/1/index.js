
const express = require('express')
const { createReadStream } = require('fs')

const bodyParser = require('body-parser')

const app = express()
app.use(bodyParser.urlencoded({extended:false}))

app.get('/favanimes' , (req,res) =>  {
    createReadStream('favAnimes.html').pipe(res)
})

app.get('/favband' , (req,res) =>  {
    createReadStream('favBand.html').pipe(res)
})

app.get('/favmovies' , (req,res) =>  {
    createReadStream('favMovies.html').pipe(res)
})


app.listen(4000)
