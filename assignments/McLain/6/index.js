const express = require('express')
const md5 = require('md5')
const fs = require('fs')
const fileName = './fingerprints.json'
const fingerprints = require(fileName)
const app = express()
const port = 3000

app.use(function(req, res, next) {

  // console.log(md5(req.headers.accept+req.headers['user-agent']));
  // console.log(req.headers['user-agent']);
  // console.log(req.headers.accept);
  next();
  });
  

app.get('/', (req, res) => {  
  // console.log(req.headers['user-agent']);
  // console.log(req.headers.accept);
  var userMd5 = md5(req.headers.accept+req.headers['user-agent']);
  var currentDate = new Date();
  var visited = false;

  if(fingerprints[userMd5]) {
    console.log("User has visited here before");
    fingerprints[userMd5]['lastVisited'] = currentDate
    visited = true;
  }
  else {
    
    var headerJson = JSON.parse(JSON.stringify(req.headers, null, 2));
    headerJson['lastVisited'] = currentDate

    fingerprints[userMd5] = headerJson;    
  }

  fs.writeFile(fileName, JSON.stringify(fingerprints, null, 2), err => {
    if (err) 
      throw err;

    console.log('Fingerprint JSON updated')
  })
  
  if(visited)
    res.send("You have visited here before");
  else
    res.sendFile('html/index.html', {root: __dirname })
})

app.listen(port, () => {
  console.log(`JSON server app listening at http://localhost:${port}`)
})