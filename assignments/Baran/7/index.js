const scrape = require('website-scraper');

let options = {
    urls: ['https://store.steampowered.com/login/'],
    directory: './node-homepage',
};

scrape(options).then((result) => {
    console.log("Website succesfully downloaded");
}).catch((err) => {
    console.log("An error ocurred", err);
});