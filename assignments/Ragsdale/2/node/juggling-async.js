const http = require('http');
const bl = require('bl');

const urls = process.argv.slice(2);

http.get(urls[0], response => {
        response.pipe(bl((err, data) => {
                if (err) return console.error(err);
                data = data.toString();
                console.log(data);
		http.get(urls[1], response => {
        response.pipe(bl((err, data) => {
                if (err) return console.error(err);
                data = data.toString();
                console.log(data);
		http.get(urls[2], response => {
        response.pipe(bl((err, data) => {
                if (err) return console.error(err);
                data = data.toString();
                console.log(data);
        }));
});


        }));
});


        }));
});

