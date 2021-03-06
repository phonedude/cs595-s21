# CS 595 - Assignment 3 

Assignment 3 for CS 595 - Web Security at Old Dominion University.  Cookie report for 100 of the Mozilla top 500 web sites 

### Directory 

* \scripts - Python scripts used to generate data
    * urls.txt - list of URLs assigned to me for the assignment
    * headers.py - calls curl command to generate text files with header responses for URLs in urls.txt
    * cookies.py - parses through text files to find cookie info and output them to cookies.json
    * results.py - generates results table from cookies.json as well as min/max/mean/median
* \assets - Files containing header outputs from each URL
    * \headers - Output header files for curl calls
    * failures.txt - Failure URLs and errors
    * 
* .gitignore - Used to ignore unncessary files

### Technologies Used

* python - v15.5.1 - https://www.python.org/

# Report

Out of the 99 URLs I was provided, I had 6 URLs that were not able to be resolved via a curl HEAD call.  Three were caused by a forced timeout of 5 seconds on my part since the call seemed to hang and get stuck. 

I used Python scripts to do all of my file generation and curl calls.  Python had some really cool modules and methods available to effectively
parse through the header outputs and get the cookie information and output those stats to a markdown table.

### Errors

cocolog-nifty.com
curl: (6) Could not resolve host: cocolog-nifty.com

googleusercontent.com
curl: (6) Could not resolve host: googleusercontent.com

mhlw.go.jp
curl: (6) Could not resolve host: mhlw.go.jp

qq.com
curl: (56) Recv failure: Connection reset by peer

transandfiestas.ga
curl: (28) Operation timed out after 1174 milliseconds with 0 bytes received

usnews.com
curl: (28) Operation timed out after 5000 milliseconds with 0 bytes received

### Cookie Results
|            URL             |      Final Status Code       |No. of Cookies|Redirects|HttpOnly|Secure|SameSite|Strict|Lax|None|Path|Not /|
|----------------------------|------------------------------|-------------:|--------:|-------:|-----:|-------:|-----:|--:|---:|---:|----:|
|about.me                    |HTTP/2 200                    |             5|        1|       4|     1|       3|     0|  3|   0|   5|    0|
|adobe.com                   |HTTP/2 200                    |             0|        2|       0|     0|       0|     0|  0|   0|   0|    0|
|apple.com                   |HTTP/2 200                    |             1|        1|       0|     0|       0|     0|  0|   0|   1|    0|
|archive.org                 |HTTP/2 200                    |             3|        1|       0|     0|       0|     0|  0|   0|   3|    0|
|bbc.com                     |HTTP/2 200                    |             0|        2|       0|     0|       0|     0|  0|   0|   0|    0|
|biglobe.ne.jp               |HTTP/1.1 200 OK               |             0|        0|       0|     0|       0|     0|  0|   0|   0|    0|
|bing.com                    |HTTP/1.1 200 OK               |            11|        1|       3|     0|       0|     0|  0|   0|  11|    0|
|blackberry.com              |HTTP/2 200                    |             0|        2|       0|     0|       0|     0|  0|   0|   0|    0|
|books.google.com            |HTTP/2 200                    |             2|        1|       2|     0|       0|     0|  0|   0|   2|    0|
|bp0.blogger.com             |HTTP/1.1 400 Bad Request      |             0|        0|       0|     0|       0|     0|  0|   0|   0|    0|
|businesswire.com            |HTTP/1.1 200 OK               |             0|        3|       0|     0|       0|     0|  0|   0|   0|    0|
|buzzfeed.com                |HTTP/2 200                    |             4|        1|       0|     0|       0|     0|  0|   0|   4|    0|
|calendar.google.com         |HTTP/1.1 404 Not Found        |             0|        0|       0|     0|       0|     0|  0|   0|   0|    0|
|chron.com                   |HTTP/2 200                    |             5|        1|       1|     4|       2|     1|  0|   1|   5|    0|
|cnet.com                    |HTTP/2 200                    |             3|        1|       0|     3|       0|     0|  0|   0|   3|    0|
|cocolog-nifty.com           |                              |             0|        0|       0|     0|       0|     0|  0|   0|   0|    0|
|columbia.edu                |HTTP/1.1 200 OK               |             1|        2|       1|     0|       0|     0|  0|   0|   1|    0|
|cpanel.com                  |HTTP/1.1 200 OK               |             0|        2|       0|     0|       0|     0|  0|   0|   0|    0|
|cpanel.net                  |HTTP/1.1 200 OK               |             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|
|docs.google.com             |HTTP/2 200                    |             3|        2|       3|     1|       0|     0|  0|   0|   3|    0|
|dropbox.com                 |HTTP/2 200                    |             7|        2|       3|     7|       0|     0|  0|   0|   7|    0|
|elmundo.es                  |HTTP/2 200                    |             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|
|engadget.com                |HTTP/2 200                    |             1|        1|       0|     0|       0|     0|  0|   0|   1|    0|
|espn.com                    |HTTP/2 200                    |             7|        1|       0|     0|       0|     0|  0|   0|   7|    0|
|eventbrite.com              |HTTP/1.1 200 OK               |            20|        2|      17|    20|      20|     0|  0|  20|  20|    0|
|example.com                 |HTTP/1.1 200 OK               |             0|        0|       0|     0|       0|     0|  0|   0|   0|    0|
|fb.com                      |HTTP/2 200                    |             2|        2|       2|     2|       0|     0|  0|   0|   2|    0|
|fb.me                       |HTTP/2 200                    |             2|        2|       2|     2|       0|     0|  0|   0|   2|    0|
|forbes.com                  |HTTP/2 200                    |             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|
|foxnews.com                 |HTTP/2 200                    |             0|        2|       0|     0|       0|     0|  0|   0|   0|    0|
|get.google.com              |HTTP/2 200                    |             2|        1|       1|     1|       0|     0|  0|   0|   2|    0|
|globo.com                   |HTTP/2 200                    |             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|
|goo.gl                      |HTTP/2 200                    |             0|        2|       0|     0|       0|     0|  0|   0|   0|    0|
|goodreads.com               |HTTP/1.1 200 OK               |             3|        1|       1|     0|       0|     0|  0|   0|   3|    0|
|google.co.in                |HTTP/1.1 200 OK               |             2|        1|       1|     1|       0|     0|  0|   0|   2|    0|
|google.co.uk                |HTTP/1.1 200 OK               |             2|        1|       1|     1|       0|     0|  0|   0|   2|    0|
|google.com.tw               |HTTP/1.1 200 OK               |             2|        1|       1|     1|       0|     0|  0|   0|   2|    0|
|google.nl                   |HTTP/1.1 200 OK               |             2|        1|       1|     1|       0|     0|  0|   0|   2|    0|
|googleusercontent.com       |                              |             0|        0|       0|     0|       0|     0|  0|   0|   0|    0|
|gooyaabitemplates.com       |HTTP/2 406                    |             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|
|guardian.co.uk              |HTTP/2 200                    |             4|        3|       0|     4|       0|     0|  0|   0|   4|    0|
|histats.com                 |HTTP/1.1 200 OK               |             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|
|home.neustar                |HTTP/2 200                    |             1|        1|       1|     0|       0|     0|  0|   0|   1|    0|
|ieee.org                    |HTTP/1.0 200 OK               |             3|        2|       0|     1|       1|     0|  0|   1|   3|    0|
|ig.com.br                   |HTTP/2 200                    |             1|        1|       1|     1|       1|     0|  1|   0|   1|    0|
|imageshack.us               |HTTP/1.1 204 No Content       |             0|        0|       0|     0|       0|     0|  0|   0|   0|    0|
|independent.co.uk           |HTTP/2 200                    |            10|        3|       1|     5|       0|     0|  0|   0|  10|    0|
|issuu.com                   |HTTP/2 200                    |             1|        1|       0|     1|       1|     0|  0|   1|   1|    0|
|jimdofree.com               |HTTP/2 200                    |             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|
|kinja.com                   |HTTP/2 200                    |             4|        1|       0|     2|       2|     0|  0|   2|   4|    0|
|latimes.com                 |HTTP/2 200                    |             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|
|lefigaro.fr                 |HTTP/2 200                    |             0|        2|       0|     0|       0|     0|  0|   0|   0|    0|
|list-manage.com             |HTTP/2 200                    |             3|        1|       1|     2|       2|     0|  0|   2|   3|    0|
|loc.gov                     |HTTP/2 200                    |             2|        1|       2|     0|       2|     0|  2|   0|   2|    0|
|mail.google.com             |HTTP/2 200                    |             1|        3|       1|     1|       0|     0|  0|   0|   1|    0|
|marketingplatform.google.com|HTTP/2 200                    |             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|
|mhlw.go.jp                  |                              |             0|        0|       0|     0|       0|     0|  0|   0|   0|    0|
|mirror.co.uk                |HTTP/2 200                    |             3|        1|       0|     0|       0|     0|  0|   0|   3|    0|
|msn.com                     |HTTP/1.1 200 OK               |             7|        1|       6|     3|       1|     0|  0|   1|   7|    0|
|nasa.gov                    |HTTP/2 200                    |             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|
|naver.jp                    |HTTP/1.1 200 OK               |             3|        2|       1|     1|       0|     0|  0|   0|   3|    0|
|netflix.com                 |HTTP/2 405                    |             4|        1|       0|     0|       0|     0|  0|   0|   4|    0|
|netvibes.com                |HTTP/2 200                    |             1|        3|       0|     1|       1|     0|  0|   1|   1|    0|
|newscientist.com            |HTTP/2 200                    |             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|
|newsweek.com                |HTTP/2 403                    |             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|
|newyorker.com               |HTTP/1.1 200 OK               |            12|        1|       2|     7|       6|     0|  0|   6|  12|    0|
|nginx.org                   |HTTP/1.1 200 OK               |             0|        0|       0|     0|       0|     0|  0|   0|   0|    0|
|opera.com                   |HTTP/2 200                    |             0|        2|       0|     0|       0|     0|  0|   0|   0|    0|
|ovh.co.uk                   |HTTP/2 200                    |             0|        2|       0|     0|       0|     0|  0|   0|   0|    0|
|picasaweb.google.com        |HTTP/2 200                    |             4|        4|       4|     1|       0|     0|  0|   0|   4|    0|
|pixabay.com                 |HTTP/2 403                    |             4|        1|       4|     3|       4|     0|  2|   2|   4|    0|
|plos.org                    |HTTP/2 200                    |             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|
|pt.wikipedia.org            |HTTP/2 200                    |             8|        2|       6|     8|       0|     0|  0|   0|   8|    0|
|qq.com                      |                              |             0|        0|       0|     0|       0|     0|  0|   0|   0|    0|
|researchgate.net            |HTTP/2 200                    |             4|        2|       4|     4|       1|     0|  1|   0|   4|    0|
|sciencemag.org              |HTTP/1.1 200 OK               |             0|        2|       0|     0|       0|     0|  0|   0|   0|    0|
|scoop.it                    |HTTP/2 200                    |             2|        1|       0|     1|       1|     0|  0|   1|   2|    0|
|sedo.com                    |HTTP/2 200                    |             5|        2|       5|     5|       2|     0|  2|   0|   5|    0|
|spiegel.de                  |HTTP/1.1 200 OK               |             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|
|spotify.com                 |HTTP/2 200                    |             5|        2|       3|     5|       2|     0|  2|   0|   5|    0|
|stanford.edu                |HTTP/2 200                    |             1|        1|       1|     1|       0|     0|  0|   0|   1|    0|
|storage.googleapis.com      |HTTP/1.1 400 Bad Request      |             0|        0|       0|     0|       0|     0|  0|   0|   0|    0|
|stores.jp                   |HTTP/2 200                    |             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|
|techcrunch.com              |HTTP/2 200                    |             4|        1|       2|     4|       3|     0|  2|   1|   4|    0|
|themeforest.net             |HTTP/2 200                    |             1|        1|       1|     0|       1|     0|  1|   0|   1|    0|
|tinyurl.com                 |HTTP/2 200                    |            10|        2|       4|     0|      10|     0| 10|   0|  10|    0|
|tools.google.com            |HTTP/2 200                    |             0|        2|       0|     0|       0|     0|  0|   0|   0|    0|
|transandfiestas.ga          |HTTP/1.1 301 Moved Permanently|             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|
|translate.google.com        |HTTP/2 200                    |             2|        1|       2|     0|       0|     0|  0|   0|   2|    0|
|trustpilot.com              |HTTP/2 200                    |             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|
|usgs.gov                    |HTTP/2 200                    |             4|        2|       0|     1|       2|     0|  0|   2|   4|    0|
|usnews.com                  |                              |             0|        0|       0|     0|       0|     0|  0|   0|   0|    0|
|wikia.com                   |HTTP/2 200                    |             3|        1|       0|     3|       3|     0|  0|   3|   3|    0|
|wiley.com                   |HTTP/2 405                    |             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|
|wp.com                      |HTTP/2 200                    |             0|        2|       0|     0|       0|     0|  0|   0|   0|    0|
|www.canalblog.com           |HTTP/1.1 200 200              |             1|        1|       1|     0|       0|     0|  0|   0|   1|    0|
|www.over-blog.com           |HTTP/2 200                    |             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|
|www.wix.com                 |HTTP/2 200                    |             7|        1|       0|     4|       4|     0|  0|   4|   7|    0|
|youtube.com                 |HTTP/2 200                    |             3|        2|       3|     3|       2|     0|  0|   2|   3|    0|
|ziddu.com                   |HTTP/2 200                    |             0|        1|       0|     0|       0|     0|  0|   0|   0|    0|

<br/>

### Cookie Stats

#### Min
* 0

#### Max
* 20

#### Mean
* 2.18

#### Median
* 1.0

<br/>

### Extra Credit

The Parsers, Parsers, Everywhere is based on a meme started on 4Chan featuring Buzz and Woody from Toy Story.  

<img src="https://i.kym-cdn.com/entries/icons/original/000/002/868/XXEverywhere.jpg" width="350">

The meme can be changed to be different phrases to match the subject the meme is being used for.

Source: https://knowyourmeme.com/memes/x-x-everywhere