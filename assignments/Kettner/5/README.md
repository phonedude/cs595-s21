## 5.1

I used node.js, HTML, and json files to demonstrate Javascript running in one HTML file requesting a .json response from another origin. 

[JSONrequest.js](5.1/JSONrequest.js): The node server that displays the HTML page.
[JSONrequest.html](5.1/JSONrequest.html): The HTML page that will display the .json response depending on whether it is blocked or not. 
[Favorites.json](5.1/Favorites.json):The JSON file containing my three favorite things from assignment 1.
[allowresponse.js](5.1/allowresponse.js): The node server that allows the .json response. 
<img src="5.1/allowed.png">
[noresponse.js](5.1/noresponse.js): The node server that blocks the .json response.
<img src="5.1/denied.png">

## 5.2

I modified my files from 5.1 to demonstrate how three custom HTTP response headers can both be blocked and allowed depending on the server.

[headerRequest.js](5.2/headerRequest.js): The node server that displays the HTML page.
[headerRequest.html](5.2/headerRequest.html): The HTML page that will display the .json response depending on whether it is blocked or not.
[Favorites.json](5.2/Favorites.json): The JSON file containing my three favorite things from assignment 1.
[allowHeaders.js](5.2/allowHeaders.js): The node server that allows the header request.
<img src="5.2/allowed.png">
[noHeaders.js](5.2/noHeaders.js): The node server that blocks the header request.
<img src="5.2/denied.png">

## 5.3

I used urbandictionary.com from my list of sites from assignment 4 to demonstrate my local HTML file being allowed or denied embedding from the remote site.

[embedding.html](5.3/embedding.html): The HTML file that will either deny or allow embedding from the remote site.
[allowEmbed.js](5.3/allowEmbed.js): The node server that allows the site to be embedded into the HTML file.
<img src="5.3/allowed.png">
[denyEmbed.js](5.3/denyEmbed.js): The node server that denys the site from being embedded into the HTML file.
<img src="5.3/denied.png">

Youtube link: https://youtu.be/A63-xM4AEb8 
