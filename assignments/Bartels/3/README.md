# Assignment 3: Cookie Report for 100 of the Mozilla Top 500 Web Sites

## Note: Only 99 web sites were analyzed because I was assigned an invalid site: Root Domain
* This can be seen in [LBART001@ODU.EDU](LBART001@ODU.EDU)

## This assignment was completed using 5 scripts:

* [curl.sh](curl.sh)
  * Perform `curl` requests on sites listed in [LBART001@ODU.EDU](LBART001@ODU.EDU) and output responses to text files named after the site.  The full reponses for each site can be founc in [httpRespones](httpResponses).
* [filterHeaders.sh](filterHeaders.sh)
  * Use `grep` to filter out any text not related to an `HTTP` status code or `set\-cookie:` header and store the output in a file named after the site with the "filtered\-" prefix appended to the file.  The filtered respones for each site can be found in [filteredHttpResponses](filteredHttpResponses).
