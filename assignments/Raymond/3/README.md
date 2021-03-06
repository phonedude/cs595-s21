Assignment 3

For this assignment I used curl -ILsk on each site and converted that to .txt files found in the responses folder.
Then I used a grep command to analyze each file and recorded the results in the following table.

grep command used:
grep -o -i 'HTTP/2 200\|set-cookie\|HttpOnly\|Secure\|SameSite=Lax\|SameSite=Strict\|SameSite\|SameSite=None\|Path=/\|path=/a\|path=/b\|path=/c\|path=/d\|path=/e\|path=/f\|path=/g\|path=/h\|path=/i\|path=/j\|path=/k\|path=/l\|path=/m\|path=/n\|path=/o\|path=/p\|path=/q\|path=/r\|path=/s\|path=/t\|path=/u\|path=/v\|path=/w\|path=/x\|path=/y\|path=/z' /mnt/c/3/responses/website.txt

Table summary 

Min:0       Max:11      Mean:2.4479     Median:2

HttpOnly:86     

Secure:122 

SameSite:49     Strict:1     Lax:18     None:30

Set Paths:223       Values not "/"=2

| Website                    | T status   | #set-cookie    | #HTTPonly      | #secure    | samesite      |  path
| --- | --- | --- | --- | --- | --- | --- |
| addtoany.com               | 200        | 1             |  1           |    1       |    1lax          |  1/
| adssettings.google.com     | 200        | 4             |  2            |   2        |                 |  2/a
| akamaihd.net               | no response 
| allaboutcookies.org        | 200        | 2             |  2            |   0       |    2lax          |  2/
| amazon.co.uk               | 405        | 0             |  0             |  0       |                  |  0
| amazon.es                  | 405        | 10            |  0             |  0       |                  |  10/
| amazon.fr                  | 405        | 0             |  0             |  0       |                 |   0
| amzn.to                    | 503        | 1             |  1             |  1       |                   | 1/
| asahi.com                  | 200        | 0             |  0             |  0       |                   | 0
| bbc.com                    | 200        | 0             |  0             |  0       |                  |  0
| berkeley.edu               | 200        | 0             |  0             |  0       |                  |  0
| billboard.com              | 200        | 6             |  4             |  3       | 3none/lax        |  6/
| bloglovin.com              | 405        | 2             |  2             |  0       |                   | 2/
| bp.blogspot.com            | no response 
| bp3.blogger.com            | no response 
| brandbucket.com            | 200        | 5             |  2              | 0         |  2lax          |  5/
| businessinsider.com        | 200        | 0             |  0              | 0        |                 |  0
| calameo.com                | 200        | 0             |  0              | 0        |                  | 0
| cbsnews.com                | 200        | 3             |  0              | 0        |                 |  3/
| cdc.gov                    | 200        | 1             |  0              | 0        |                  | 1/
| cnet.com                   | 200        | 3             |  0              | 3         |                |  3/
| com.com                    | 200        | 2             |  1              | 0         |                 | 2/
| consumerreports.org        | 200        | 1             |  0              | 0        |                 |  1/
| creativecommons.org        | 200        | 3             |  2              | 0         |  2lax           | 3/
| dell.com                   | 403        | 1             |  1              | 1         |  1none         |  1/
| dw.com                     | 200        | 0             |  0              | 0         |                |  0
| ebay.com                   | 301        | 0             |  0              | 0        |                  | 0
| engadget.com               | 200        | 1             |  0              | 2        |                  | 1/
| entrepreneur.com           | 200        | 10            |  2              | 0        |                  | 10/
| espn.com                   | 200        | 7             |  0              | 0        |                  | 7/
| evernote.com               | 200        | 1             |  0              | 1       |                  |  1/
| facebook.com               | 200        | 2             |  1              | 2        |                 |  2/
| fb.me                      | 200        | 2             |  2              | 2        |                  | 2/
| feedburner.com             | 200        | 2             |  2              | 1       |                  |  2/
| feedburner.google.com      | 200        | 2             |  2              | 1       |                 |   2/
| ggpht.com                  | no response                                                                     
| godaddy.com                | 200        | 10            |  0              | 1        |                |   10/
| google.com.tw              | 200        | 2              | 1             |  1        |                 |  2/
| google.ru                  | 200        | 2              | 1              | 1       |                  |  2/
| hatena.ne.jp               | 200        | 0             |  0              | 0       |                  |  0
| hollywoodreporter.com      | 200        | 3            |   3              | 2       |  2none/1lax      |  3/
| hp.com                     | 200        | 0             |  0              | 1        |                 |  0
| ikea.com                   | 200        | 4             |  2              | 1        |                 |  4/
| imgur.com                  | 200        | 1             |  0             |  1        |                 |  1/
| instructables.com          | 200        | 0              | 0              | 0        |                 |  0
| iso.org                    | 200        | 4             |  4              | 2        |   2none         |  4/
| istockphoto.com            | 200        | 5             |  1              | 0       |                  |  5/
| iubenda.com                | 200        | 4             |  2              | 2         |                |  4/
| ja.wikipedia.org           | 200        | 8             |  6              | 8        |                |   8/
| kinja.com                  | 200        | 4             |  0              | 3        |   2none         |  4/
| lemonde.fr                 | 200        | 1             |  0              | 1        |                 |  1/
| linkedin.com               | 200        | 5            |   1              | 5        |   5none         |  5/
| lycos.com                  | 200        | 0             |  0              | 0        |                 |  0
| mail.google.com            | 200        | 1             |  1              | 1        |                  | 1/
| marketingplatform.google.com | 200       | 0            |   0             |  0       |                  |  0
| mashable.com               | 200        | 0             |  0              | 0          |               |  0
| mediafire.com              | 200        | 2             |  2              | 0         |  1lax         |   2/
| networkadvertising.org     | 200        | 6             |  0             |  2         |  2none        |   4/
| news.com.au                | 200        | 0             |  0              | 0         |                |  0
| news.yahoo.com             | 404        | 1             |  0              | 0         |                |  1/
| newsweek.com               | 403        | 0             |  0              | 0         |                |  0
| nih.gov                    | 200        | 0              | 0              | 0         |                |  0
| nikkei.com                 | 200        | 1              | 0             |  0         |  1lax         |   1/
| office.com                 | 200        | 8             |  2             |  3         |  2none         |  8/
| orange.fr                  | 200        | 2             |  2              | 2         |  2none         |  2/
| oreilly.com                | 200        | 2              | 2              | 1         |  1none         |  2/
| ovh.net                    | 200        | 0             |  0              | 0         |                |  0
| pastebin.com               | 200        | 2             |  2              | 1         |  1lax          |  2/
| paypal.com                 | 200        | 11            |  7             |  12        |                |  11/
| people.com                 | 200        | 0             |  0             |  0         |               |   0
| picasa.google.com          | 200        | 0             |  0             |  0         |                |  0
| picasaweb.google.com       | 200        | 4            |   4              | 1         |                |  4/
| playstation.com            | 200        | 1             |  1              | 0         |                |  1/
| politico.com               | 200        | 1             |  1              | 1         |  1lax          |  1/
| rt.com                     | 200        | 0             |  0              | 0         |                 | 0
| sendspace.com              | 200        | 2             |  0             |  0         |                 | 2/
| sfgate.com                 | 200        | 5             |  1            |   4       | 1strict/1none    |  5/
| standard.co.uk             | 200        | 10            |  2             |  6           |               | 10/
| statista.com               | 200        | 4             |  2              | 4          |               |  4/
| storage.canalblog.com      | 200        | 0             |  0             |  0           |              |  0
| tabelog.com                | 200        | 5              | 3             |  4          |               |  5/
| target.com                 | 405        | 1             |  0            |   0          |               |  1/
| terra.com.br               | 200        | 4             |  0            |   4          |              |   2/
| thoughtco.com              | 200        | 3             |  0             |  0          |              |   3/
| tmz.com                    | 200        | 0             |  0             |  0          |              |   0
| tools.google.com           | 200        | 0             |  0              | 0          |              |   0
| transandfiestas.ga         | 200        | 0             |  0              | 0          |              |   0
| tripadvisor.com            | 200        | 0             |  0              | 0          |              |   0
| uol.com.br                 | 200        | 0             |  0              | 0          |               |  0
| usatoday.com               | 200        | 4              | 0              | 6          | 4lax          |  4/
| vice.com                   | 200        | 7             |  1              | 1          |               |  6/
| wa.me                      | 200        | 2             |  2              | 2           |              |  2/
| washingtonpost.com         | 200        | 5             |  0              | 6          | 4none         |  4/
| whatsapp.com               | 200        | 3             |  2             |  3          |              |   3/
| who.int                    | 200        | 1             |  1              | 1          | 1lax         |   1/
| wikia.com                  | 200        | 4             |  0              | 4         |  3none        |   3/
| wikihow.com                | 200        | 3             |  0              | 3          |                | 3/
| xbox.com                   | 404        | 5             |  0              | 0          |               |  2/
| yale.edu                   | 200        | 0             |  0              | 0          |               |  0
| ziddu.com                  | 200        | 0             |  0              | 0          |                | 0
