filterFn = require('./mymodule.js');
dir = process.argv[2];
extensionFilter = process.argv[3];

filterFn(dir, extensionFilter, function (err, list) {
  if (err)
    return console.error('There was an error:', err);

  list.forEach(function (file) {
    console.log(file);
  })
})