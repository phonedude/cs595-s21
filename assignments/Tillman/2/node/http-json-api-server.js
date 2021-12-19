'use strict'
const http = require('http')
const map = require('through2-map')

const server = http.createServer(function (req, res) {
  if (req.method !== 'GET') {
    return res.end('send me a GET\n')
  }
        var url = req.url.toString();
        var data = {};
       
    var endpoint = url.split("\/")[2].split("?")[0];


    if(endpoint ==="parsetime")
    {
      
        var time = url.split("T")[1].split(".")[0];
        data["hour"] = 19 - Number((time.split(":"))[0]);
        data["minute"] = Number(time.split(":")[1]);
        data["second"] = Number(time.split(":")[2]);
    }
    else if(endpoint === "unixtime")
    {
        var timedate = url.split("=")[1];
        var d = new Date(timedate);
        var c = new Date('1 Jan 1970 00:00:00 UTC');
        var diff = d-c;
        data["unixtime"] = Number(diff.toString());
    }
    else{
        
    }
  return res.end(JSON.stringify(data));
})

server.listen(Number(process.argv[2]))