# Assignment 4: Frames

## List of directories

  * [Data Table](data.csv)
  * Code
    * [Collect CURL responses and create HTML](code/create_html.py)
    * [Check if a website is framable or not](code/check_framable.py)
  * Intermediate Files
    * [CURL Responses](curl_output)
    * [HTML Files Created](framable)


## Q1: Which public sites are framable?

### Summary

* Total number of sites: 99

* How many are framable: 11

* How many are not framable: 88

* What are the framable sites:

```
/HW4$ cat data.csv | grep "True" | cut -d"," -f1
adweek.com
blog.fc2.com
britannica.com
ca.gov
foxnews.com
gooyaabitemplates.com
nps.gov
people.com
reuters.com
washingtonpost.com
wired.com

```

* What are the non framable sites:

```
/HW4$ cat data.csv | grep "True" | cut -d"," -f1
academia.edu
accounts.google.com
adobe.com
amazon.ca
amazon.co.jp
amazon.de
answers.com
bbc.com
booking.com
books.google.com
bp.blogspot.com
bp3.blogger.com
brandbucket.com
calameo.com
cambridge.org
cloudflare.com
de.wikipedia.org
deezer.com
dropbox.com
ebay.com
ed.gov
en.wikipedia.org
europa.eu
fandom.com
fb.me
finance.yahoo.com
forbes.com
get.google.com
ggpht.com
godaddy.com
gofundme.com
goo.gl
google.co.in
google.de
google.es
google.nl
googleblog.com
greenpeace.org
groups.yahoo.com
harvard.edu
hm.com
huffpost.com
ig.com.br
instagram.com
iso.org
lifehacker.com
linkedin.com
lycos.com
mail.google.com
mail.ru
microsoft.com
msn.com
my.yahoo.com
myspace.com
namesilo.com
networkadvertising.org
news.google.com
newscientist.com
nokia.com
offset.com
orange.fr
php.net
picasa.google.com
plos.org
policies.google.com
rediff.com
researchgate.net
rt.com
shutterstock.com
stanford.edu
steamcommunity.com
surveymonkey.com
terra.com.br
thenextweb.com
theverge.com
thoughtco.com
tinyurl.com
transandfiestas.ga
twitch.tv
usgs.gov
vk.com
walmart.com
whitehouse.gov
wiktionary.org
wordpress.org
youtu.be
youtube.com
zdnet.com
```

* Non framable sites: How did they defeat the attempt to frame them?

** All of the framable sites gave no error when loading the Iframe.

** Of the non framable sites:
  
  - One sitee (bbc.com) gave no error. Loking at that, it appears tha bbc.com page loads in the IFrame but unable to interact with it. If we try to click on something in the site, it will give "refused to connect" error.
  - Everything else gives the SecurityError: Blocked a frame with origin http://localhost:4000 from accessing a cross-origin frame. 

* "X-Frame-Options" header distribution.* 
     50 'SAMEORIGIN'or 'sameorigin'
     40 No "X-Frame-Options" header
      6 DENY
      3 'SAMEORIGIN' and 'DENY'

### Steps

* Step 01: I have created the HTML files with the help of [create_html.py](code/create_html.py). 

  Here I am replacing the place holder for the URL in [my template](main_template.html) with the sites provided for me to create each HTML file.
  
  These files are stored in the [framable](framable) directory.  
  
* Step 02: Using the same [create_html.py](code/create_html.py), I have also collected the [CURL responses](curl_output) for each of the 99 sites.

* Step 03: Hosting the files through my node server on "http://localhost:4000/".

* Step 04: Checking if a website is framable by running the [code](code/check_framable.py) which uses selenium to open each HTML hosted locally.

** Javascript in each HTML file will call frameLoaded() function onload. 

```
<iframe onload="frameLoaded()" onerror="onError()" id = "myframe" src="http://www.bbc.com" style="border:2px solid blue;" title="Iframe Example"></iframe>

```
** A constant isLoaded is defined which will get the window length from the contentWindow property (contentWindow returns the Window object of an HTMLIFrameElement). If the frame is loaded, isLoaded will be greater than 0 and if it's not loaded, it will be equal to zero.   

```
function frameLoaded() 
{

var that = document.getElementById('myframe');
const isLoaded = that.contentWindow.window.length;  
if (isLoaded == 0)
{
	try{
		(that.contentWindow||that.contentDocument).location.href;
		alert("Iframe not loaded but no error")

	}
	catch(err){
	alert("Iframe not loaded: " + err);
	}

}
else if (isLoaded >= 1)
{
	alert("Iframe loaded");
}
}
```

** Finally, I am using selenium to open each HTML hosted locally to collect the alert text along with any error the browser might through while trying to load the Iframe.

```
response = driver.get(localhost_url)
driver.implicitly_wait(30)
alerttext = driver.switch_to.alert
outcome = alerttext.text	
if outcome == "Iframe loaded":
	  isframable = True
if "Iframe not loaded" in outcome:
	  isframable = False
	  try:
		    reason = outcome.strip("Iframe not loaded: ")
	  except:					
		    pass
```

### Screenshots

* Creating the HTML files and collecting the CURL responses.
<img src="screenshots/1.png" width="700">

* Running the node server.
<img src="screenshots/2.png" width="700">

* Checking if the sites are framable.
<img src="screenshots/3.1.png" width="700">
<img src="screenshots/3.2.png" width="700">

## Q2: Frame attack

