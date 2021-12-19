const express = require('express');
const app = express();
const cors = require('cors')
const path = require('path');

var corsOptions = {
  origin: '*',
  optionsSuccessStatus: 200 
}
app.use(cors(corsOptions));

app.get('/embed', function(req, res) {
  res.sendFile(path.join(__dirname, '/embed.html'));
});
app.listen(3002, () => {

    console.log(`Listening on port 3002`);
})