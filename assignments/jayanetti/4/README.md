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

* How many are framable:

* How many are not framable: 

* What are the framable sites:

```
/HW4$ cat data.csv | grep "True" | cut -d"," -f1

```

* What are the non framable sites:

```
/HW4$ cat data.csv | grep "True" | cut -d"," -f1

```

* Non framable sites: How did they defeat the attempt to frame them?


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
<img src="screenshots/3.png" width="700">

## Q2: Frame attack

