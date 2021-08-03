const got = require('got');
const jsdom = require("jsdom");
const { JSDOM } = jsdom;
const urls = `abc.net.au
abcnews.go.com
about.com
accounts.google.com
alibaba.com
amazon.es
apache.org
apple.com
bbc.com
billboard.com
bing.com
box.com
bp2.blogger.com
businesswire.com
buydomains.com
calameo.com
cbc.ca
chicagotribune.com
cloudflare.com
code.google.com
consumerreports.org
corriere.it
cpanel.net
disney.com
doubleclick.net
dreniq.com
dribbble.com
ed.gov
elmundo.es
elpais.com
epa.gov
fda.gov
forms.gle
geocities.com
github.com
gizmodo.com
gofundme.com
google.co.in
google.com.br
google.com.tw
google.ru
gravatar.com
gstatic.com
harvard.edu
home.neustar
id.wikipedia.org
imageshack.us
imgur.com
indiatimes.com
iso.org
kickstarter.com
kinja.com
live.com
marketingplatform.google.com
marriott.com
mediafire.com
mozilla.com
mozilla.org
msn.com
my.yahoo.com
myspace.com
namecheap.com
nicovideo.jp
opera.com
photos.google.com
photos1.blogger.com
php.net
playstation.com
policies.google.com
popsugar.com
princeton.edu
psychologytoday.com
pt.wikipedia.org
qq.com
quora.com
rakuten.co.jp
samsung.com
sciencemag.org
search.google.com
shopify.com
statista.com
symantec.com
terra.com.br
theguardian.com
thoughtco.com
time.com
twitter.com
undeveloped.com
usatoday.com
usnews.com
viagens.com.br
wiktionary.org
wired.com
wp.com
www.google.com
www.wix.com
xbox.com
yandex.ru
youtube.com
zendesk.com`;
const files = urls.split("\n");
function getCookies(ext){
    got('http://localhost:4000/html/' + ext + '.html').then(response => {
        const dom = new JSDOM(response.body);
        var iframe = dom.window.document.querySelectorAll("iframe")[0];
        var innerDoc = (iframe.contentDocument) ? iframe.contentDocument : iframe.contentWindow.document;
        let c =  innerDoc.cookie;
        console.log(c);
      }).catch(err => {
        console.log(err);
      });
   
}

for(let i = 0; i<files.length/5;i++)
getCookies(files[i]
)


