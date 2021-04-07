const express = require('express')
var app = express();

app.use(express.static('./htmlPages'))

app.listen(4000)