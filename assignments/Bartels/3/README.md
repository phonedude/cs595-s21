# Assignment 3: Cookie Report for 100 of the Mozilla Top 500 Web Sites

## Note: Only 99 web sites were analyzed because I was assigned an invalid site: Root Domain
* This can be seen in [LBART001@ODU.EDU](LBART001@ODU.EDU)

## This assignment was completed using 5 scripts:

* [curl.sh](curl.sh)
  * Perform `curl` requests on sites listed in [LBART001@ODU.EDU](LBART001@ODU.EDU) and output responses to text files named after the site.  The full reponses for each site can be found in [httpRespones](httpResponses).
* [filterHeaders.sh](filterHeaders.sh)
  * Use `grep` to filter out any text not related to an `HTTP` status code or `set-cookie:` header and store the output in a file named after the site with the "filtered\-" prefix appended to the file.  The filtered respones for each site can be found in [filteredHttpResponses](filteredHttpResponses).
* [countCookies.sh](countCookies.sh)
  * Use `grep` to parse every filtered file for each website's terminating status code, number of `set-cookie` headers, number of `httponly` cookies, number of `secure` cookies, number of `samesite` cookies, number of `strict` `samesite` cookies, number of `lax` `samesite` cookies, number of `none` `samesite` cookies, number of cookies that set `path`, and number of paths set to a value other than `/`.
  * The output for each site's statistics can be viewed in [headerStats.txt](headerStats.txt).
* [getNumCookies.sh](getNumCookies.sh)
  * Use `grep` to count the number of `set-cookie` headers in each fitered file, and append the number to an array.  The array is passed into [calculateCookieStats.py](calculateCookieStats.py).
* [calculateCookieStats.py](calculateCookieStats.py)
  * Store the array passed in by [getNumCookies.sh](getNumCookies.sh) into another array.  Convert each value in the array to an `int`.  Sort the array.  Print the first and last elements of the array as the `Minimum number of cookies` and `Maximum number of cookies`, respectively.  Use `numpy` to calculate the `Mean` and `Median` number of cookies.
  * Output can be viewed in [cookieStats.txt](cookieStats.txt).

## Summary of 99 Websites

Site|Terminating Status Code|Number of Cookies|HttpOnly|Secure|SameSite|Strict|Lax|None|Path|Path Not /|
----|-----------------------|-----------------|--------|------|--------|------|---|----|----|---|
4shared.com|200|1|0|0|0|0|0|0|1|0|
abc.net.au |200|6|0|0|0|0|0|0|6|0|
about.com  |200|0|0|0|0|0|0|0|0|0|
aboutads.info|200|1|0|0|0|0|0|0|1|0|
abril.com.br|301|142|142|95|47|0|47|0|142|0|
afternic.com|200|2|1|1|0|0|0|0|2|0|
aliexpress.com|200|10|4|5|5|0|0|5|10|0|
amazon.co.jp|405|1|0|0|0|0|0|0|1|0|
apache.org|200|0|0|0|0|0|0|0|0|0|
billboard.com|200|6|4|3|4|0|1|3|6|0|
bitly.com|405|0|0|0|0|0|0|0|0|0|
blog.fc2.com|200|2|0|0|0|0|0|0|2|0|
books.google.com|200|2|2|0|0|0|0|0|2|0|
bp0.blogger.com|400|0|0|0|0|0|0|0|0|0|
change.org|200|4|3|4|4|1|3|0|4|0|
cisco.com|200|0|0|0|0|0|0|0|0|0|
cointernet.com.co|200|1|1|0|0|0|0|0|1|0|
coursera.org|200|4|0|0|0|0|0|0|4|0|
de.wikipedia.org|200|8|6|8|0|0|0|0|8|0|
detik.com|200|0|0|0|0|0|0|0|0|0|
disney.com|200|0|0|0|0|0|0|0|0|0|
doubleclick.net|200|0|0|0|0|0|0|0|0|0|
ebay.co.uk|301|0|0|0|0|0|0|0|0|0|
economist.com|200|11|2|0|0|0|0|0|11|0|
evernote.com|200|1|0|1|0|0|0|0|1|0|
fandom.com|200|3|0|3|3|0|0|3|3|0|
feedburner.google.com|200|2|2|1|0|0|0|0|2|0|
finance.yahoo.com|404|1|0|0|0|0|0|0|1|0|
foursquare.com|200|0|0|0|0|0|0|0|0|0|
ft.com|200|1|0|0|0|0|0|0|1|0|
gmail.com|200|1|1|1|0|0|0|0|1|0|
godaddy.com|200|7|0|1|0|0|0|0|7|0|
google.co.uk|200|2|1|1|0|0|0|0|2|0|
google.com.br|200|2|1|1|0|0|0|0|2|0|
google.it|200|2|1|1|0|0|0|0|2|0|
gooyaabitemplates.com|406|0|0|0|0|0|0|0|0|0|
home.pl|200|0|0|0|0|0|0|0|0|0|
huffpost.com|200|0|0|0|0|0|0|0|0|0|
ibm.com|200|4|2|2|0|0|0|0|4|0|
icann.org|301|0|0|0|0|0|0|0|0|0|
ikea.com|200|4|2|1|0|0|0|0|4|0|
imdb.com|200|0|0|0|0|0|0|0|0|0|
istockphoto.com|200|5|1|0|0|0|0|0|5|0|
it.wikipedia.org|200|8|6|8|0|0|0|0|8|0|
ja.wikipedia.org|200|8|6|8|0|0|0|0|8|0|
lefigaro.fr|200|0|0|0|0|0|0|0|0|0|
lemonde.fr|200|1|0|1|0|0|0|0|1|0|
line.me|200|1|0|0|0|0|0|0|1|0|
live.com|440|3|0|3|0|0|0|0|3|0|
livescience.com|200|2|1|0|0|0|0|0|2|0|
lycos.com|200|0|0|0|0|0|0|0|0|0|
marriott.com|200|2|0|2|2|0|0|2|2|0|
medium.com|200|5|4|3|3|0|1|2|5|0|
megaupload.com|Did not resolve|0|0|0|0|0|0|0|0|0|
my.yahoo.com|200|0|0|0|0|0|0|0|0|0|
myaccount.google.com|200|3|3|0|0|0|0|0|3|0|
namecheap.com|200|4|3|2|3|0|2|1|3|0|
namesilo.com|503|4|4|3|4|0|2|2|4|0|
netvibes.com|200|1|0|1|1|0|0|1|1|0|
news.google.com|200|5|3|2|0|0|0|0|5|0|
newscientist.com|200|0|0|0|0|0|0|0|0|0|
nokia.com|200|2|0|0|0|0|0|0|2|0|
nps.gov|200|2|0|1|1|0|0|1|2|0|
opera.com|200|0|0|0|0|0|0|0|0|0|
ovh.co.uk|200|0|0|0|0|0|0|0|0|0|
ox.ac.uk|200|0|0|0|0|0|0|0|0|0|
pbs.org|200|0|0|0|0|0|0|0|0|0|
photobucket.com|200|0|0|0|0|0|0|0|0|0|
photos1.blogger.com|404|0|0|0|0|0|0|0|0|0|
pixbay.com|403|4|4|3|4|0|2|2|4|0|
plesk.com|200|1|1|1|1|0|1|0|1|0|
princeton.edu|200|2|2|0|2|0|2|0|2|0|
pt.wikipedia.org|200|8|6|8|0|0|0|0|8|0|
quora.com|403|0|0|0|0|0|0|0|0|0|
rakuten.co.jp|200|2|0|0|0|0|0|0|2|0|
rambler.ru|200|4|0|1|1|0|0|1|4|0|
ria.ru|200|0|0|0|0|0|0|0|0|0|
sapo.pt|200|0|0|0|0|0|0|0|0|0|
sedo.com|200|5|5|5|2|0|2|0|5|0|
slideshare.net|200|2|0|0|0|0|0|0|2|0|
smh.com.au|200|0|0|0|0|0|0|0|0|0|
spiegel.de|200|0|0|0|0|0|0|0|0|0|
spotify.com|200|5|3|5|2|0|2|0|5|0|
stanford.edu|200|1|1|1|0|0|0|0|1|0|
storage.canalblog.com|200|0|0|0|0|0|0|0|0|0|
support.google.com|200|2|2|0|0|0|0|0|2|0|
telegraph.co.uk|200|0|0|0|0|0|0|0|0|0|
thedailybeast.com|200|7|5|0|5|0|5|0|7|0|
thenextweb.com|200|3|2|0|2|0|2|0|3|0|
transandfiestas.ga|200|0|0|0|0|0|0|0|0|0|
twitch.tv|200|4|1|3|3|0|0|3|3|0|
vimeo.com|200|0|0|0|0|0|0|0|0|0|
w3.org|200|0|0|0|0|0|0|0|0|0|
washingtonpost.com|200|5|0|4|4|0|0|4|5|0|
wired.com|200|16|2|11|9|2|0|7|14|0|
www.blogger.com|200|3|3|3|0|0|0|0|3|0|
www.over-blog.com|200|0|0|0|0|0|0|0|0|0|
yale.edu|200|0|0|0|0|0|0|0|0|0|
ytimg.com|Did not resolve|0|0|0|0|0|0|0|0|0|

## Table summary

### Minumum number of cookies:
* 0
### Maximum number of cookies:
* 142
### Mean number of cookies:
* 3.683673469387755
### Median number of cookies:
* 1.0
