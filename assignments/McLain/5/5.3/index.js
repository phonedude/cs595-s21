const express = require('express')
const app = express()
const port = 3000

app.use(function(req, res, next) {
    // Allow all origins
    res.header("Access-Control-Allow-Origin", "*");
    // Prohibit Frames except from Whitelisted Domain
    res.setHeader("Content-Security-Policy", "default-src 'self' *.bing.com/; upgrade-insecure-requests");
    next();
  });
  

app.get('/', (req, res) => {
  res.sendFile('index.html', {root: __dirname })
})

app.listen(port, () => {
  console.log(`JSON server app listening at http://localhost:${port}`)
})