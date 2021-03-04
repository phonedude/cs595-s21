const http = require("http");

module.exports = function (url,index ,callback) {
  http
    .get(url, (response) => {
      let result = "";
      response.setEncoding("utf-8");
      response.on("data", (data) => {
        result += data;
      });
      response.on("end", (end) => {
        callback(null, result);
      });
      response.on("error", (err) => {
        return callback(err, null);
      });
    })
    .on("error", (err)=>{
        return callback(err,null);
    });
};
