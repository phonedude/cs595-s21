http = require('http');
bl = require('bl');
resultData = [];
count = 0;

function printData () {
	for (let i = 0; i < 3; i++) {
		console.log(resultData[i]);
	}
}

function httpGet (index) {
	http.get(process.argv[2 + index], function (response) {
		response.pipe(bl(function (err, data) {
  			if (err) {
    				return console.error('There was an error', err);
  			}

  			resultData[index] = data.toString();
  			count++;

  			if (count === 3) {
    				printData();
  			}
		}))
	})
}

for (let i = 0; i < 3; i++) {
	httpGet(i);
}
