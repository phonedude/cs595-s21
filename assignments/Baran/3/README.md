Assignment Overview

websites/cookies: 
Holds the parsed set-cookie info for further analysis

websites/curl: 
Holds the raw curl output for parsing

script.sh:
my bash script that curls all urls in the list, outputs the data to /websites/curl, and then parses data for required info

table.tsv:
output file for the script in table form

YT Video: https://www.youtube.com/watch?v=WDR4xrkPZ9o

|Site Name             |Exit Status|# Cookies|# HttpOnly|# Secure|# SS|#Strict|# Lax|# None|# Set Path|# Other|
|----------------------|-----------|---------|----------|--------|----|-------|-----|------|----------|-------|
|aboutads.info         |200        |1        |0         |0       |0   |0      |0    |0     |1         |0      |
|academia.edu          |200        |8        |1         |4       |0   |0      |0    |0     |4         |4      |
|accounts.google.com   |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|adweek.com            |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|akamaihd.net          |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|apple.com             |200        |2        |0         |0       |0   |0      |0    |0     |2         |0      |
|archive.org           |200        |3        |0         |0       |0   |0      |0    |0     |3         |0      |
|arstechnica.com       |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|asus.com              |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|bandcamp.com          |200        |6        |1         |1       |1   |0      |0    |1     |6         |0      |
|bit.ly                |405        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|box.com               |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|calendar.google.com   |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|cbc.ca                |200        |2        |0         |1       |1   |0      |0    |1     |2         |0      |
|chaturbate.com        |200        |10       |7         |5       |6   |0      |3    |3     |10        |0      |
|chicagotribune.com    |200        |4        |0         |0       |0   |0      |0    |0     |2         |2      |
|cisco.com             |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|cloudflare.com        |500        |1        |1         |0       |1   |0      |0    |1     |1         |0      |
|cnil.fr               |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|cocolog-nifty.com     |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|cointernet.com.co     |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|coursera.org          |200        |2        |0         |0       |0   |0      |0    |0     |2         |0      |
|de.wikipedia.org      |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|deezer.com            |200        |7        |5         |0       |0   |0      |0    |0     |7         |0      |
|dell.com              |403        |1        |1         |0       |0   |0      |0    |0     |1         |0      |
|ea.com                |200        |2        |0         |2       |0   |0      |0    |0     |2         |0      |
|ebay.co.uk            |302        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|ebay.com              |301        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|ed.gov                |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|eff.org               |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|elpais.com            |200        |10       |0         |0       |0   |0      |0    |0     |10        |0      |
|elsevier.com          |200        |2        |0         |0       |0   |0      |0    |0     |2         |0      |
|facebook.com          |200        |2        |2         |2       |0   |0      |0    |0     |2         |0      |
|fb.com                |200        |2        |2         |2       |0   |0      |0    |0     |2         |0      |
|fda.gov               |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|forbes.com            |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|gizmodo.com           |200        |7        |0         |4       |4   |0      |0    |4     |7         |0      |
|globo.com             |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|goodreads.com         |200        |3        |1         |0       |0   |0      |0    |0     |3         |0      |
|google.co.id          |200        |2        |1         |1       |0   |0      |0    |0     |2         |0      |
|google.co.jp          |200        |2        |1         |1       |0   |0      |0    |0     |2         |0      |
|google.pl             |200        |2        |1         |1       |0   |0      |0    |0     |2         |0      |
|google.ru             |200        |2        |1         |1       |0   |0      |0    |0     |2         |0      |
|gravatar.com          |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|hatena.ne.jp          |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|hp.com                |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|ibm.com               |200        |6        |3         |2       |0   |0      |0    |0     |6         |0      |
|ietf.org              |200        |1        |1         |1       |1   |0      |1    |0     |1         |0      |
|imageshack.com        |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|ipv4.google.com       |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|irs.gov               |200        |4        |2         |1       |0   |0      |0    |0     |4         |0      |
|jstor.org             |200        |6        |0         |6       |6   |0      |5    |1     |6         |0      |
|kickstarter.com       |200        |9        |2         |7       |0   |0      |0    |0     |9         |0      |
|lefigaro.fr           |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|loc.gov               |200        |2        |2         |0       |2   |0      |2    |0     |2         |0      |
|marriott.com          |200        |2        |1         |2       |2   |0      |0    |2     |2         |0      |
|metro.co.uk           |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|mhlw.go.jp            |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|naver.com             |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|networkadvertising.org|200        |2        |0         |1       |1   |0      |0    |1     |2         |1      |
|newyorker.com         |200        |12       |2         |7       |6   |0      |0    |6     |12        |0      |
|nytimes.com           |200        |5        |0         |2       |2   |0      |1    |1     |5         |0      |
|opera.com             |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|orange.fr             |200        |2        |2         |2       |2   |0      |0    |2     |2         |0      |
|pbs.org               |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|pewresearch.org       |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|picasa.google.com     |404        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|pinterest.co.uk       |200        |4        |3         |3       |1   |0      |0    |1     |4         |0      |
|pixabay.com           |403        |5        |5         |4       |5   |0      |2    |3     |5         |0      |
|plos.org              |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|popsugar.com          |200        |8        |0         |6       |6   |0      |0    |6     |8         |0      |
|quora.com             |403        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|rakuten.co.jp         |200        |2        |0         |0       |0   |0      |0    |0     |2         |0      |
|rediff.com            |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|reuters.com           |200        |1        |1         |0       |0   |0      |0    |0     |0         |1      |
|sapo.pt               |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|search.google.com     |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|shutterstock.com      |406        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|standard.co.uk        |200        |9        |2         |5       |0   |0      |0    |0     |9         |0      |
|stanford.edu          |200        |1        |1         |1       |0   |0      |0    |0     |1         |0      |
|state.gov             |403        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|steamcommunity.com    |200        |2        |0         |2       |2   |0      |0    |2     |2         |0      |
|storage.canalblog.com |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|stores.jp             |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|tabelog.com           |200        |5        |3         |4       |0   |0      |0    |0     |5         |0      |
|ted.com               |200        |5        |0         |0       |0   |0      |0    |0     |5         |0      |
|trustpilot.com        |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|usgs.gov              |200        |4        |0         |1       |2   |0      |0    |2     |4         |0      |
|usnews.com            |timed out  |         |          |        |    |       |     |      |          |       |
|vimeo.com             |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|w3.org                |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|welt.de               |200        |2        |0         |0       |0   |0      |0    |0     |0         |2      |
|wikimedia.org         |200        |3        |2         |3       |0   |0      |0    |0     |3         |0      |
|wordpress.org         |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|wsj.com               |403        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|www.over-blog.com     |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|www.wix.com           |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|yahoo.co.jp           |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|yandex.ru             |200        |10       |1         |2       |0   |0      |0    |0     |10        |0      |
|youronlinechoices.com |200        |0        |0         |0       |0   |0      |0    |0     |0         |0      |
|                      |           |         |          |        |    |       |     |      |          |       |
|Max                   |Min        |Median   |Mean      |        |    |       |     |      |          |       |
|12                    |0          |0        |1.96969697|        |    |       |     |      |          |       |

