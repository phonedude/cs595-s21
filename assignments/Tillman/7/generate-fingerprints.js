const express = require('express');
const app = express();
const md5 = require('md5');
const fs = require('fs');
const fileName = './results.json';
let fingerprints = {};


app.get('/', (req, res) => {  
    let visited = false;
    let userMd5 = md5(req.headers['user-agent']);
    let date = new Date();
  

  if(fingerprints[userMd5]) {

    fingerprints[userMd5]['lastVisit'] = date;
    visited = true;
  }
  else {
    
    let header = JSON.parse(JSON.stringify(req.headers));
    header['lastVisit'] = date
    fingerprints[userMd5] = header;    
  }

  fs.writeFile(fileName, JSON.stringify(fingerprints), err => {
    if (err) 
      throw err;
  })
    if(visited)
    res.send("You have visited with this browser already. There are still a total of " + Object.keys(fingerprints).length + " fingerprints saved.");
  else
  res.send("First time visiting with this browser - saving browser fingerprint.  There are now a total of " + Object.keys(fingerprints).length + " fingerprints saved.");
  
  

})

app.listen(3002, () => {
    console.log(`Listening on port 3002`);
})