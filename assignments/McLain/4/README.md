# CS 595 - Assignment 4

Assignment 4 for CS 595 - Web Security at Old Dominion University.  For URLs from Assignment 3, determine which sites are framable

<br />

## Video

* https://youtu.be/EfYdnJiacdo

## Framable 

### Technology Used

* node.js - 15.11.0
* html

### Directories

* /frameable/html - all HTML files for attempting to frame the URLs

### Methods 

Two methods were used to get the Denial reason if the URL was unable to be framed: 

* **Browser's Developer Console** 

![consolesample](https://github.com/darinmclain/cs595-s21/blob/main/assignments/McLain/4/images/console-sample.PNG)

* **Network Tab in Developer Console**

![networksample](https://github.com/darinmclain/cs595-s21/blob/main/assignments/McLain/4/images/networktab-sample.PNG)

<br/>

### Results

Below are the results for all of the URLs in the list.  If the frame was denied, the reason is found in the Reason for Deny column.
All corresponding HTML pages can be found in /framable/html.  Each page can be run on node with the index.js file at http://localhost:3000/html/{filename} 

For example, the framing attempt for about.me can be found at http://localhost:3000/html/about-me.html

<br />

|            URL             | Frameable? |               Reason for Deny                       |
|----------------------------|------------|               :----:                        |
|about.me                    |No          |  “X-Frame-Options“ directive set to “DENY“  |                              
|adobe.com                   |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|apple.com                   |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|archive.org                 |Yes          |    |
|bbc.com                     |Yes          |    |
|biglobe.ne.jp               |Yes          |    |
|bing.com                    |Yes          |    |
|blackberry.com              |No          |  content-security-policy - frame-ancestors 'self'; “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|books.google.com            |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|bp0.blogger.com             |No          |  400. That’s an error. Response  |
|businesswire.com            |No          |  Content-Security-Policy - frame-ancestors 'self' |
|buzzfeed.com                |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|calendar.google.com         |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|chron.com                   |Yes          |    |
|cnet.com                    |No          |  content-security-policy - frame-ancestors 'self'; “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|cocolog-nifty.com           |No          |  Couldn't Resolve URL  |
|columbia.edu                |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|cpanel.com                  |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|cpanel.net                  |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|docs.google.com             |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|dropbox.com                 |No          |  “X-Frame-Options“ directive set to “DENY“  |
|elmundo.es                  |Yes          |   |
|engadget.com                |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|espn.com                    |No          |  content-security-policy - frame-ancestors 'self' plus many ESPN domains|
|eventbrite.com              |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|example.com                 |Yes          |    |
|fb.com                      |No          |  “X-Frame-Options“ directive set to “DENY“  |
|fb.me                       |No          |  “X-Frame-Options“ directive set to “DENY“  |
|forbes.com                  |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|foxnews.com                 |Yes          |    |
|get.google.com              |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|globo.com                   |Yes          |    |
|goo.gl                      |Yes          |    |
|goodreads.com               |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|google.co.in                |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|google.co.uk                |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|google.com.tw               |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|google.nl                   |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|googleusercontent.com       |No          |  Couldn't Resolve URL  |
|gooyaabitemplates.com       |Yes          |    |
|guardian.co.uk              |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|histats.com                 |No          |  Redirected browser URL to histats.com  |
|home.neustar                |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|ieee.org                    |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|ig.com.br                   |Yes          |    |
|imageshack.us               |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|independent.co.uk           |Yes          |    |
|issuu.com                   |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|jimdofree.com               |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|kinja.com                   |No          |  content-security-policy - frame-ancestors 'self';  |
|latimes.com                 |Yes          |    |
|lefigaro.fr                 |Yes          |    |
|list-manage.com             |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|loc.gov                     |No          |  “X-Frame-Options“ directive set to “sameorigin“  |
|mail.google.com             |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|marketingplatform.google.com|Yes          |    |
|mhlw.go.jp                  |No          |  Couldn't Resolve URL  |
|mirror.co.uk                |Yes          |    |
|msn.com                     |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|nasa.gov                    |No          |  content-security-policy - frame-ancestors 'self' https://*.nasa.gov  |
|naver.jp                    |Yes          |    |
|netflix.com                 |No          |  “X-Frame-Options“ directive set to “DENY“  |
|netvibes.com                |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|newscientist.com            |No          |  “X-Frame-Options“ directive set to “DENY“  |
|newsweek.com                |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|newyorker.com               |Yes          |    |
|nginx.org                   |Yes          |    |
|opera.com                   |No          |  content-security-policy - frame-ancestors 'self' https://*.opera.com;   |
|ovh.co.uk                   |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|picasaweb.google.com        |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|pixabay.com                 |No          |  content-security-policy - frame-ancestors none  |
|plos.org                    |Yes          |    |
|pt.wikipedia.org            |Yes          |    |
|qq.com                      |Yes          |    |
|researchgate.net            |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|sciencemag.org              |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|scoop.it                    |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|sedo.com                    |Yes          |    |
|spiegel.de                  |Yes          |    |
|spotify.com                 |No          |  content-security-policy - frame-ancestors 'self' https://*.spotify.com https://*.spotify.net;   |
|stanford.edu                |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|storage.googleapis.com      |No          |  &lt;Code&gt;MissingSecurityHeader&lt;/Code&gt;&lt;Message&gt;Your request was missing a required header.&lt;/Message&gt;  |
|stores.jp                   |Yes          |  “X-Frame-Options“ directive set to “DENY“  |
|techcrunch.com              |Yes/No          |  While the calls are executed, the display is blank.  |
|themeforest.net             |No          |  “X-Frame-Options“ directive set to “DENY“  |
|tinyurl.com                 |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|tools.google.com            |Yes          |    |
|transandfiestas.ga          |No          |  Couldn't Resolve URL  |
|translate.google.com        |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|trustpilot.com              |No          |  “X-Frame-Options“ directive set to “deny“  |
|usgs.gov                    |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|usnews.com                  |Yes          |    |
|wikia.com                   |Yes          |    |
|wiley.com                   |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|wp.com                      |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|www.canalblog.com           |Yes          |    |
|www.over-blog.com           |No          |  “X-Frame-Options“ directive set to “DENY“  |
|www.wix.com                 |Yes          |    |
|youtube.com                 |No          |  “X-Frame-Options“ directive set to “SAMEORIGIN“  |
|ziddu.com                   |Yes          |    |

<br />

### Totals

* Framing allowed - 32
* Framing denied - 67
* Mixed result - 1 (techcrunch.com)

**Denial Methods**
* X-Frame-Options - SAMEORIGIN - 42
* X-Frame-Options - DENY - 10
* frame-ancestors - 9
* Browser Redirect - 1
* Unable to Resolve - 4

## Frame Attack

### Technology Used

* node.js - 15.11.0 - https://nodejs.org/en/
* express.js - https://expressjs.com/
* html
* javascript

### Directories

* /frame-attack/attacker - all HTML and node.js server files used to try and obtain cookies and embed iframe
* /frame-attack/defender - all HTML and node.js server files used to allow or deny framing, set cookies