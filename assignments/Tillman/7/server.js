const express = require('express');
const path = require('path');
const app = express();
const fs = require('fs');
const { response } = require('express');
const { Console } = require('console');
const fileName = './passwords.json';




app.get('/', function(req, res) {
    res.sendFile(path.join(__dirname, '/index.html'));
  });

  app.all('/save', (req, res) => {



    fs.writeFile(fileName, JSON.stringify(req.query), err => {
        if (err) 
          throw err;
      })
    res.send('SAVED');
    })


app.listen(3001, () => {
    console.log("serving index.html on post 3001")
})