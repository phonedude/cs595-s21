const myModule = require('./myModule');

const directory = process.argv[2];
const extension = process.argv[3];

myModule(directory, extension, (err, filteredList) => {
if (err) return console.error(err);
	filteredList.forEach(file => {
		console.log(file);
	});
});
