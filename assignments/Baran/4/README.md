Assignment 4

YT Video: https://www.youtube.com/watch?v=3LrGZ0VA_Lw

Files:

/frameable

/curl:
    curl data for websites

/node_modules:
    node.js
    
/pages:
    Attempts to frame the page in an iframe
    
index.js:
    my index page for the server
    
main.html:
    one page with all iframes on it

script.sh:
    my javascript code
    
table.tsv:
    my output into a table (i convereted it to MD for this)
    
/frame-attack

attackerserver.js:
    my server to attempt to steal the cookies
    
victim-secure.html: 
    my html page for a secure cookie
    
victim-secure.js: 
    my javascript code for a secure cookie
    
victim-unsecure.html: 
    my html page for an unsecure cookie
    
victim-unsecure.js: 
    my javascript code for an unsecure cookie
    
Frameable Data: 

The sites that defeated my attempts to frame them were using "X-Frame-Options" set to SAMEORIGIN, DENY, or Both.

|Site Name             |Not Frameable (Deny)|Frameable (Same Origin)|
|----------------------|--------------------|-----------------------|
|aboutads.info         |0                   |1                      |
|academia.edu          |0                   |1                      |
|accounts.google.com   |1                   |0                      |
|adweek.com            |0                   |0                      |
|akamaihd.net          |1                   |0                      |
|apple.com             |0                   |1                      |
|archive.org           |0                   |0                      |
|arstechnica.com       |0                   |1                      |
|asus.com              |0                   |1                      |
|bandcamp.com          |0                   |0                      |
|bit.ly                |0                   |0                      |
|box.com               |0                   |1                      |
|calendar.google.com   |1                   |0                      |
|cbc.ca                |0                   |0                      |
|chaturbate.com        |1                   |1                      |
|chicagotribune.com    |0                   |0                      |
|cisco.com             |0                   |1                      |
|cloudflare.com        |0                   |1                      |
|cnil.fr               |0                   |1                      |
|cocolog-nifty.com     |0                   |1                      |
|cointernet.com.co     |0                   |1                      |
|coursera.org          |0                   |1                      |
|de.wikipedia.org      |1                   |0                      |
|deezer.com            |0                   |1                      |
|dell.com              |0                   |0                      |
|ea.com                |0                   |1                      |
|ebay.co.uk            |0                   |1                      |
|ebay.com              |0                   |1                      |
|ed.gov                |0                   |1                      |
|eff.org               |0                   |1                      |
|elpais.com            |0                   |0                      |
|elsevier.com          |0                   |1                      |
|facebook.com          |1                   |0                      |
|fb.com                |1                   |0                      |
|fda.gov               |0                   |1                      |
|forbes.com            |0                   |1                      |
|gizmodo.com           |0                   |0                      |
|globo.com             |0                   |0                      |
|goodreads.com         |0                   |1                      |
|google.co.id          |0                   |1                      |
|google.co.jp          |0                   |1                      |
|google.pl             |0                   |1                      |
|google.ru             |0                   |1                      |
|gravatar.com          |0                   |1                      |
|hatena.ne.jp          |1                   |0                      |
|hp.com                |0                   |1                      |
|ibm.com               |0                   |0                      |
|ietf.org              |0                   |0                      |
|imageshack.com        |0                   |1                      |
|ipv4.google.com       |1                   |0                      |
|irs.gov               |0                   |1                      |
|jstor.org             |0                   |1                      |
|kickstarter.com       |0                   |1                      |
|lefigaro.fr           |0                   |0                      |
|loc.gov               |0                   |1                      |
|marriott.com          |0                   |0                      |
|metro.co.uk           |0                   |0                      |
|mhlw.go.jp            |0                   |1                      |
|naver.com             |1                   |0                      |
|networkadvertising.org|0                   |1                      |
|newyorker.com         |0                   |0                      |
|nytimes.com           |1                   |0                      |
|opera.com             |0                   |1                      |
|orange.fr             |0                   |1                      |
|pbs.org               |1                   |0                      |
|pewresearch.org       |0                   |0                      |
|picasa.google.com     |0                   |0                      |
|pinterest.co.uk       |0                   |1                      |
|pixabay.com           |0                   |1                      |
|plos.org              |0                   |0                      |
|popsugar.com          |1                   |0                      |
|quora.com             |0                   |0                      |
|rakuten.co.jp         |1                   |0                      |
|rediff.com            |0                   |1                      |
|reuters.com           |0                   |0                      |
|sapo.pt               |0                   |1                      |
|search.google.com     |1                   |0                      |
|shutterstock.com      |0                   |0                      |
|standard.co.uk        |0                   |0                      |
|stanford.edu          |0                   |1                      |
|state.gov             |0                   |0                      |
|steamcommunity.com    |0                   |1                      |
|storage.canalblog.com |1                   |0                      |
|stores.jp             |0                   |0                      |
|tabelog.com           |0                   |1                      |
|ted.com               |0                   |1                      |
|trustpilot.com        |1                   |0                      |
|usgs.gov              |0                   |1                      |
|vimeo.com             |0                   |1                      |
|w3.org                |0                   |0                      |
|welt.de               |0                   |0                      |
|wikimedia.org         |0                   |0                      |
|wordpress.org         |0                   |1                      |
|wsj.com               |0                   |0                      |
|www.over-blog.com     |1                   |0                      |
|www.wix.com           |1                   |0                      |
|yahoo.co.jp           |0                   |0                      |
|yandex.ru             |1                   |0                      |
|youronlinechoices.com |0                   |0                      |
