# Assignment 4, CS 495/595 Web Security, Spring 2021

## Which public sites are framable?

### List of files in Framable directory
 * [html_files](framable/html_files): 100 HTML files
 * [http-responses](framable/http-responses): curl responses of 100 sites
 * frame_report.sh: collect X-frame-options and CSP
 * main.html: Place-holder HTML file that was used to create 100 HTML files

### Youtube Video: 

### Summary
![alt text](framable/Framable.png)


### Framable Sites 

| Framable Site          |
|------------------------|
| alibaba.com            |
| allaboutcookies.org    |
| ap.org                 |
| asahi.com              |
| biglobe.ne.jp          |
| bing.com               |
| blog.fc2.com           |
| brandbucket.com        |
| chron.com              |
| cloudflare.com         |
| disney.com             |
| disqus.com             |
| dw.com                 |
| e-recht24.de           |
| economist.com          |
| es.wikipedia.org       |
| example.com            |
| fr.wikipedia.org       |
| harvard.edu            |
| id.wikipedia.org       |
| iso.org                |
| m.wikipedia.org        |
| marriott.com           |
| metro.co.uk            |
| nationalgeographic.com |
| nginx.org              |
| oreilly.com            |
| qq.com                 |
| ria.ru                 |
| secureserver.net       |
| sfgate.com             |
| so-net.ne.jp           |
| sputniknews.com        |
| thefreedictionary.com  |
| un.org                 |
| washingtonpost.com     |
| welt.de                |
| wikia.com              |
|                        |


### Not Framable Sites 
  
| Site                 | Explaination                                                                                                                                        |
|----------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|
| icann.org            | 301                                                                                                                                                 |
| newsweek.com         | x-frame-options: SAMEORIGIN                                                                                                                         |
| gstatic.com          | 404                                                                                                                                                 |
| xbox.com             | 404                                                                                                                                                 |
| bitly.com            | 405                                                                                                                                                 |
| entrepreneur.com     | content-security-policy: frame-ancestors 'self'                                                                                                     |
| gizmodo.com          | content-security-policy: frame-ancestors 'self'                                                                                                     |
| medium.com           | content-security-policy: frame-ancestors medium.com                                                                                                 |
| nypost.com           | content-security-policy: frame-ancestors nypost.com *.nypost.com *.decider.com *.pagesix.com http://www.stumbleupon.com https://www.stumbleupon.com |
| nydailynews.com      | nydailynews.com sent an invalid response, Provisional headers are shown                                                                             |
| transandfiestas.ga   | transandfiestas.ga took too long to respond.                                                                                                        |
| about.me             | x-frame-options: DENY                                                                                                                               |
| accounts.google.com  | x-frame-options: DENY                                                                                                                               |
| aliexpress.com       | x-frame-options: DENY                                                                                                                               |
| facebook.com         | x-frame-options: DENY                                                                                                                               |
| github.com           | x-frame-options: deny                                                                                                                               |
| mail.google.com      | x-frame-options: DENY                                                                                                                               |
| nature.com           | x-frame-options: DENY                                                                                                                               |
| nifty.com            | x-frame-options: DENY                                                                                                                               |
| offset.com           | x-frame-options: DENY                                                                                                                               |
| over-blog-kiwi.com   | x-frame-options: DENY                                                                                                                               |
| prezi.com            | x-frame-options: DENY                                                                                                                               |
| amazon.fr            | x-frame-options: SAMEORIGIN                                                                                                                         |
| apple.com            | x-frame-options: SAMEORIGIN                                                                                                                         |
| fda.gov              | x-frame-options: SAMEORIGIN                                                                                                                         |
| get.google.com       | x-frame-options: SAMEORIGIN                                                                                                                         |
| myaccount.google.com | x-frame-options: SAMEORIGIN                                                                                                                         |
| namesilo.com         | x-frame-options: SAMEORIGIN                                                                                                                         |
| youtube.com          | x-frame-options: SAMEORIGIN                                                                                                                         |
| abc.net.au           | x-frame-options: SAMEORIGIN	                                                                                                                         |
| box.com              | x-frame-options: SAMEORIGIN	                                                                                                                         |
| businessinsider.com  | x-frame-options: SAMEORIGIN	                                                                                                                         |
| businesswire.com     | x-frame-options: SAMEORIGIN	                                                                                                                         |
| cisco.com            | x-frame-options: SAMEORIGIN	                                                                                                                         |
| draft.blogger.com    | x-frame-options: SAMEORIGIN	                                                                                                                         |
| e-monsite.com        | x-frame-options: SAMEORIGIN	                                                                                                                         |
| ebay.com             | x-frame-options: SAMEORIGIN	                                                                                                                         |
| engadget.com         | x-frame-options: SAMEORIGIN	                                                                                                                         |
| google.ca            | x-frame-options: SAMEORIGIN	                                                                                                                         |
| google.co.in         | x-frame-options: SAMEORIGIN	                                                                                                                         |
| google.it            | x-frame-options: SAMEORIGIN	                                                                                                                         |
| groups.yahoo.com     | x-frame-options: SAMEORIGIN	                                                                                                                         |
| hp.com               | x-frame-options: SAMEORIGIN	                                                                                                                         |
| imageshack.com       | x-frame-options: SAMEORIGIN	                                                                                                                         |
| istockphoto.com      | x-frame-options: SAMEORIGIN	                                                                                                                         |
| jimdofree.com        | x-frame-options: SAMEORIGIN	                                                                                                                         |
| nih.gov              | x-frame-options: SAMEORIGIN	                                                                                                                         |
| office.com           | x-frame-options: SAMEORIGIN	                                                                                                                         |
| orange.fr            | x-frame-options: SAMEORIGIN	                                                                                                                         |
| qz.com               | x-frame-options: SAMEORIGIN	                                                                                                                         |
| samsung.com          | x-frame-options: SAMEORIGIN	                                                                                                                         |
| sapo.pt              | x-frame-options: SAMEORIGIN	                                                                                                                         |
| stackoverflow.com    | x-frame-options: SAMEORIGIN	                                                                                                                         |
| tes.com              | x-frame-options: SAMEORIGIN	                                                                                                                         |
| thedailybeast.com    | x-frame-options: SAMEORIGIN	                                                                                                                         |
| theguardian.com      | x-frame-options: SAMEORIGIN	                                                                                                                         |
| undeveloped.com      | x-frame-options: SAMEORIGIN	                                                                                                                         |
| unesco.org           | x-frame-options: SAMEORIGIN	                                                                                                                         |
| utexas.edu           | x-frame-options: SAMEORIGIN	                                                                                                                         |
| wikihow.com          | x-frame-options: SAMEORIGIN	                                                                                                                         |
| www.weebly.com       | x-frame-options: SAMEORIGIN	                                                                                                                         |
| xinhuanet.com        | xinhuanet.com took too long to respond.                                                                                                             |


## Frame attack

### List of files in Frame-attack directory  
 * [evil_site.html](frame-attack/evil_site.html): Page stealing cookies of an iframed page (unsafe_site.html) 
 * [evil_site1.html](frame-attack/evil_site1.html): Page trying to steal cookies of an iframed page (safe_site.html) 
 * [safe_site.html](frame-attack/safe_site.html): Page with protected cookie using httpOnly & Samesite (strict)
 * [unsafe_site.html](frame-attack/unsafe_site.html): Page with unprotected cookie
 * [server_1.js](frame-attack/server_1.js): server hosting evil site on localhost:8000  
 * [server_2.js](frame-attack/server_2.js): server hosting safe and unsafe pages on localhost:5000 


### Youtube Video: 

### Summary

