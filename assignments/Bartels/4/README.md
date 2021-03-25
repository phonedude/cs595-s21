# Assignment 4: Frames

## Which public sites are frameable?
Site|Framable?|Method of defeating frame attempt|
----|---------|---------------------------------|
4shared.com|Yes||
abc.net.au|No|X-Frame-Options set to SAMEORIGIN|
about.com|No|X-Frame-Options set to SAMEORIGIN|
aboutads.info|No|X-Frame-Options set to SAMEORIGIN|
abril.com.br|Yes||
afternic.com|No|X-Frame-Options set to SAMEORIGIN|
aliexpress.com|No|X-Frame-Options set to DENY|
amazon.co.jp|No|X-Frame-Options set to SAMEORIGIN|
apache.org|Yes||
billboard.com|Yes||
bitly.com|No|X-Frame-Options set to DENY|
blog.fc2.com|Yes||
books.google.com|No|X-Frame-Options set to SAMEORIGIN|
bp0.blogger.com|N/A|HTTP 400|
change.org|No|X-Frame-Options set to sameorigin|
cisco.com|No| Content-Security-Policy set frame ancestors to list of sites; X-Frame-Options set to SAMEORIGIN|
cointernet.com.co|No|X-Frame-Options set to SAMEORIGIN|
coursera.org|No|X-Frame-Options set to SAMEORIGIN|
de.wikipedia.org|Yes||
detik.com|No|X-Frame-Options set to SAMEORIGIN|
disney.com|Yes||
doubleclick.net|Yes||
ebay.co.uk|No|X-Frame-Options set to SAMEORIGIN|
economist.com|Yes||
evernote.com|No|X-Frame-Options set to SAMEORIGIN|
fandom.com|No|X-Frame-Options set to SAMEORIGIN|
feedburner.google.com|No|X-Frame-Options set to DENY|
finance.yahoo.com|No|X-Frame-Options set to SAMEORIGIN|
foursquare.com|No|X-Frame-Options set to SAMEORIGIN|
ft.com|Yes||
gmail.com|Yes||
godaddy.com|No|X-Frame-Options set to DENY|
google.co.uk|No|X-Frame-Options set to SAMEORIGIN|
google.com.br|No|X-Frame-Options set to SAMEORIGIN|
google.it|No|X-Frame-Options set to SAMEORIGIN|
gooyaabitemplates.com|Yes||
home.pl|No|X-Frame-Options set to SAMEORIGIN|
huffpost.com|No|Content-security-policy set frame ancestors to self|
ibm.com|Yes||
icann.org|No|X-Frame-Options set to SAMEORIGIN|
ikea.com|No|X-Frame-Options set to SAMEORIGIN|
imdb.com|No|X-Frame-Options set to SAMEORIGIN|
istockphoto.com|No|X-Frame-Options set to SAMEORIGIN|
it.wikipedia.org|Yes||
ja.wikipedia.org|Yes||
lefigaro.fr|Yes||
lemonde.fr|No|X-Frame-Options set to SAMEORIGIN|
line.me|Yes||
live.com|Yes||
livescience.com|Yes||
lycos.com|No|Content-security-policy set frame ancestors to self|
marriott.com|Yes||
medium.com|Yes||
megaupload.com|N/A|Site did not resolve|
my.yahoo.com|No|Content-security-policy set frame ancestors to self; X-Frame-Options set to SAMEORIGIN|
myaccount.google.com|Yes||
namecheap.com|No|X-Frame-Options set to SAMEORIGIN|
namesilo.com|No|Content-Security-Policy set frame ancestors to list of sites; X-Frame-Options set to SAMEORIGIN|
netvibes.com|No|X-Frame-Options set to SAMEORIGIN|
news.google.com|No|X-Frame-Options set to SAMEORIGIN|
newscientist.com|No|X-Frame-Options set to DENY|
nokia.com|No|Content-security-policy set frame ancestors to self; X-Frame-Options set to SAMEORIGIN|
nps.gov|Yes||
opera.com|No|Content-security-policy set frame ancestors to self; X-Frame-Options set to SAMEORIGIN|
ovh.co.uk|No|X-Frame-Options set to SAMEORIGIN|
ox.ac.uk|No|Content-security-policy set frame ancestors to self|
pbs.org|No|X-Frame-Options set to DENY|
photobucket.com|Yes||
photos1.blogger.com|N/A|HTTP 404|
pixabay.com|No|Content-security-policy set frame ancestors to none; X-Frame-Options set to DENY|
plesk.com|No|X-Frame-Options set to SAMEORIGIN|
princeton.edu|No|X-Frame-Options set to SAMEORIGIN|
pt.wikipedia.org|Yes||
quora.com|No|X-Frame-Options set to SAMEORIGIN|
rakuten.co.jp|No|X-Frame-Options set to DENY|
rambler.ru|No|X-Frame-Options set to SAMEORIGIN|
ria.ru|Yes||
sapo.pt|No|X-Frame-Options set to SAMEORIGIN|
sedo.com|Yes||
slideshasre.net|No|X-Frame-Options set to SAMEORIGIN|
smh.com.au|No|Content-security-policy set frame ancestors to self; X-Frame-Options set to sameorigin|
spiegel.de|Yes||
spotify.com|No|Content-security-policy set frame ancestors to self; X-Frame-Options set to deny|
stanford.edu|No|X-Frame-Options set to SAMEORIGIN|
storage.canalblog.com|Yes||
support.google.com|No|X-Frame-Options set to SAMEORIGIN|
telegraph.co.uk|No|Content-security-policy set frame ancestors to self; X-Frame-Options set to SAMEORIGIN|
thedailybeast.com|No|X-Frame-Options set to SAMEORIGIN|
thenextweb.com|No|X-Frame-Options set to SAMEORIGIN|
transandfiestas.ga|N/A|Site attacks with either "You won a contest!" or "Download Flash Player" (obviously malicious)|
twitch.tv|No|X-Frame-Options set to SAMEORIGIN|
vimeo.com|No|X-Frame-Options set to sameorigin|
w3.org|Yes||
washingtonpost.com|Yes||
wired.com|Yes||
www.blogger.com|Yes||
www.over-blog.com|No|X-Frame-Options set to DENY|
yale.edu|No|X-Frame-Options set to SAMEORIGIN|
ytimg.com|N/A|Site did not resolve|

## Table Summary
* Number of sites that are framable:
  * 33
* Number of sites that are not framable:
  * 61
* Number of exceptional cases or N/A:
  * 5
  * Exceptions and circumstances:
    * bp0.blogger.com: HTTP 400
    * megaupload.com: Site did not resolve
    * photos1.blogger.com: HTTP 404
    * transandfiestas.ga: Site sent malicious attacks in both iframe and normal browser
    * ytimg.com: Site did not resolve
### Methods of defeating frame attempts
* Sites that had X-Frame-Options set to SAMEORIGIN/sameorigin:
  * 41
* Sites that had X-Frame-Options set to DENY/deny:
  * 8
* Sites that had Content-security-policy set frame ancestors to self:
  * 3
* Sites that had Content-security-policy set frame ancestors to self and/or list of sites, and X-Frame-Options to SAMEORIGIN/sameorigin:
  * 7
* Sites that had Content-security-policy set frame ancestors to self or none, and X-Frame-Options set to DENY/deny:
  * 2
