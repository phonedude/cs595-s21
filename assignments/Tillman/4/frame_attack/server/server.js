const express = require('express');
const app = express();

app.use('/html', express.static('html'));

app.listen(4000, () => {console.log("listening on 4000");})