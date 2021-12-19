const express = require('express');
const app = express();

const cors = require('cors')

var corsOptions = {
  origin: '*',
  optionsSuccessStatus: 200
}
app.use(cors(corsOptions));

app.get('/assignment1', (req, res) => {
    res.send('My 3 favorite things from assignment 1 were learning '+
    +'how to set up a basic web page, how easy it was, and '+
    'thinking of the possibilities of what I can build in the future.')
  })
app.listen(3002, () => {

    console.log(`Listening on port 3002`);
})