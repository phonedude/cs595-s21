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

Site|Terminating Status Code|Number of Cookies|HttpOnly|Secure|SameSite|Strict|Lax|None|Path|Path Not /
----|-----------------------|-----------------|--------|------|--------|------|---|----|----|
4shared.com|200|1|0|0|0|0|0|0|1|0
