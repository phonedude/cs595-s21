const express = require('express')
const app = express();

app.use(express.static('./HTMLfiles'))

app.listen(4000)
