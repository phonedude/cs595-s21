const express = require('express');
const app = express();

app.use('/html', express.static('html'));

app.listen(3500, () => {})