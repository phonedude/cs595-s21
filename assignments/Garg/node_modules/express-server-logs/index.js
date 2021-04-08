/*
* @file: express-server-logs/index.js
* @descrition: This file exports the main function of the express-server-logs
* @author: Nitin Padgotra
* @date: 28/11/18
* */

let _this;

function init(productionMode = false, options = {
  date: true,
  url: true,
  method: true,
  headers: true,
  pathParam: true,
  bodyParam: true,
  queryParam: true
}) {
  _this = this;
  this.productionMode = productionMode;
  this.config = options;
}

init.prototype.success = (message) => {
  if (!_this.productionMode) {
    console.log('\x1b[32m', 'Success: ', message, '\x1b[0m');
  }
}

init.prototype.error = (message) => {
  if (!_this.productionMode) {
    console.log('\x1b[31m', 'Error: ', message, '\x1b[0m');
  }
}

init.prototype.info = (message) => {
  if (!_this.productionMode) {
    console.log('\x1b[34m', 'Info: ', message, '\x1b[0m');
  }
}

init.prototype.warning = (message) => {
  if (!_this.productionMode) {
    console.log('\x1b[33m', 'Warning: ', message, '\x1b[0m');
  }
}

init.prototype.logger = (req, res, next) => {
  console.log('logging request');
  if (_this.config.date) console.log('+++++++ New request received at ', new Date(Date.now()).toString());
  if (_this.config.url) console.log('+++++++ Request path ', req.url);
  if (_this.config.method) console.log('+++++++ Request method ', req.method);
  if (_this.config.headers) console.log('+++++++ Request headers ', req.headers);
  if (_this.config.pathParam) console.log('+++++++ Request path parameters', req.params);
  if (_this.config.bodyParam) console.log('+++++++ Request body parameters', req.body);
  if (_this.config.queryParam) console.log('+++++++ Request query parameters', req.query);
  next();
};


module.exports = init;
