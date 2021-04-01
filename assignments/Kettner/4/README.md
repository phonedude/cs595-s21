For this assignment, I made a script to convert the sites to html pages. Then, 
I used Chrome to check which sites were framable/not framable by running the 
node server. 
For the next part of the assignment, I used two servers to show how one server
can steal the cookies from an iframed page on the other server. After this, I
created new pages to show how the iframed page can protect itself from the
attacker server. 

Youtube link: https://youtu.be/tFGHmqkPXjY


|          Site          |                       Framable                      |
| ---------------------- | --------------------------------------------------- |
| abc.es                 | Yes                                                 |
| abcnews.go.com         | Yes                                                 |
| about.me               | No; X-Frame-Options set to deny                     |
| abril.com.br           | Yes                                                 |
| alibaba.com            | Yes                                                 |
| ap.org                 | Yes                                                 |
| biblegateway.com       | Yes                                                 |
| booking.com            | Yes                                                 |
| bp1.blogger.com        | Failed to load (400 status)                         |
| bp2.blogger.com        | Failed to load (400 status)                         |
| brandbucket.com        | Yes                                                 |
| businessinsider.com    | No; X-Frame-Options set to sameorigin               |
| businessinsider.com.au | Yes                                                 |
| cbc.ca                 | Yes                                                 |
| cloudflare.com         | No; X-Frame-Options set to sameorigin               |
| code.google.com        | Yes                                                 |
| com.com                | Yes                                                 |
| detik.com              | No; X-Frame-Options set to sameorigin               |
| digg.com               | No; X-Frame-Options set to sameorigin               |
| docs.google.com        | No; X-Frame-Options set to sameorigin               |
| e-recht24.de           | Yes                                                 |
| ea.com                 | content-security-policy frame ancestors set to self |
| elmundo.es             | Yes                                                 |
| en.wikipedia.org       | Yes                                                 |
| fb.com                 | No; X-Frame-Options set to deny                     |
| feedburner.google.com  | No; X-Frame-Options set to deny                     |
| forbes.com             | No; X-Frame-Options set to sameorigin               |
| geocities.com          | No; X-Frame-Options set to sameorigin               |
| gizmodo.com            | content-security-policy frame ancestors set to self |
| godaddy.com            | No; X-Frame-Options set to deny                     |
| icann.org              | No; X-Frame-Options set to sameorigin               |
| ieee.org               | No; X-Frame-Options set to sameorigin               |
| ikea.com               | No; X-Frame-Options set to sameorigin               |
| imageshack.us          | No; X-Frame-Options set to sameorigin               |
| istockphoto.com        | No; X-Frame-Options set to sameorigin               |
| it.wikipedia.org       | Yes                                                 |
| iubenda.com            | No; X-Frame-Options set to sameorigin               |
| jimdofree.com          | No; X-Frame-Options set to sameorigin               |
| jstor.org              | No; X-Frame-Options set to sameorigin               |
| latimes.com            | Yes                                                 |
| lifehacker.com         | content-security-policy frame ancestors set to self |
| liveinternet.ru        | Yes                                                 |
| m.wikipedia.org        | Yes                                                 |
| microsoft.com          | No; X-Frame-Options set to sameorigin               |
| mixcloud.com           | No; X-Frame-Options set to sameorigin               |
| msn.com                | No; X-Frame-Options set to sameorigin               |
| myspace.com            | content-security-policy frame ancestors set to self |
| mysql.com              | No; X-Frame-Options set to sameorigin               |
| mystrikingly.com       | Yes                                                 |
| nature.com             | No; X-Frame-Options set to deny                     |
| netvibes.com           | No; X-Frame-Options set to sameorigin               |
| nginx.com              | Yes                                                 |
| nhk.or.jp              | could not find ip address                           |
| nih.gov                | No; X-Frame-Options set to sameorigin               |
| ok.ru                  | No; X-Frame-Options set to sameorigin               |
| orange.fr              | No; X-Frame-Options set to sameorigin               |
| oreilly.com            | Yes                                                 |
| ox.ac.uk               | content-security-policy frame ancestors set to self |
| photobucket.com        | Yes                                                 |
| pinterest.com          | Yes                                                 |
| plos.org               | Yes                                                 |
| prezi.com              | No; X-Frame-Options set to sameorigin               |
| princeton.edu          | No; X-Frame-Options set to sameorigin               |
| pt.wikipedia.org       | Yes                                                 |
| qz.com                 | content-security-policy frame ancestors set to self |
| rapidshare.com         | Yes                                                 |
| researchgate.net       | No; X-Frame-Options set to sameorigin               |
| reuters.com            | Yes                                                 |
| ria.ru                 | Yes                                                 |
| samsung.com            | No; X-Frame-Options set to sameorigin               |
| scoop.it               | No; X-Frame-Options set to sameorigin               |
| secureserver.net       | Failed to load (404 status)                         |
| shutterstock.com       | Yes                                                 |
| sites.google.com       | No; X-Frame-Options set to deny                     |
| smh.com.au             | content-security-policy frame ancestors set to self |
| snapchat.com           | No; X-Frame-Options set to deny                     |
| so-net.ne.jp           | Yes                                                 |
| steampowered.com       | Yes                                                 |
| storage.googleapis.com | Failed to load (400 status)                         |
| terra.com.br           | No; X-Frame-Options set to sameorigin               |
| tools.google.com       | Yes                                                 |
| tripadvisor.com        | Yes                                                 |
| twitter.com            | No; X-Frame-Options set to deny                     |
| urbandictionary.com    | Yes                                                 |
| usatoday.com           | No; X-Frame-Options set to deny                     |
| usgs.gov               | No; X-Frame-Options set to sameorigin               |
| usnews.com             | Yes                                                 |
| utexas.edu             | No; X-Frame-Options set to sameorigin               |
| viglink.com            | Yes                                                 |
| vk.com                 | No; X-Frame-Options set to deny                     |
| w3.org                 | Yes                                                 |
| wikia.com              | No; X-Frame-Options set to sameorigin               |
| wn.com                 | Yes                                                 |
| wp.com                 | No; X-Frame-Options set to sameorigin               |
| www.blogger.com        | Yes                                                 |
| www.canalblog.com      | Yes                                                 |
| www.over-blog.com      | No; X-Frame-Options set to deny                     |
| xting.com              | No; X-Frame-Options set to sameorigin               |
| yandex.ru              | No; X-Frame-Options set to deny                     |
| ytimg.com              | Failed to load                                      |

















































