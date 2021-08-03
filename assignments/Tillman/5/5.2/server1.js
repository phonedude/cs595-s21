const express = require('express');
const path = require('path');
const app = express();




app.get('/', function(req, res) {
    res.sendFile(path.join(__dirname, '/app1.html'));
  });

app.listen(3001, () => {
    console.log("serving app1.html on post 3001")
})