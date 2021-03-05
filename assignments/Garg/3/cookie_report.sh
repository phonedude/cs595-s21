#!/bin/bash
# '''
# Usage: ./cookie_report.sh file_sites
# Author:  @Kritika_garg
# Date :  2020-02-19
# Date-modified: 2020-02-21 
# Comments:
# 

# Site  terminating_status No_of_cookies HttpOnly Secure SameSite Strict Lax None Have_Path Path_"/" path_other

# '''
file_sites=$1
mkdir http-responses

echo -e "Site\tTstatus\tNcookies\tHttpOnly\tSecure\tSameSite\tStrict\tLax\tNone\tSetPath\tRootPath\tOtherPath" >> sitecookies_report.tsv

#site="cdc.gov"
while read site; do
	curl -ILsk $site -o $site

	status=$(grep ^"HTTP" $site | tail -1| cut -d" " -f2)
	grep -i ^"Set-cookie" $site > site_cookies
	n_cookies=$(cut -d";" site_cookies -f1|uniq| wc -l)
	httpO=$(grep -i "HttpOnly" site_cookies | wc -l)
	sec=$(grep -i "Secure" site_cookies | wc -l)

	#samesite
	awk -F";" '{ for ( n=1; n<=NF; n++ ) if(tolower($n)~"samesite=") print $n }' site_cookies > samesite_cookies
	ssc=$(cat samesite_cookies| wc -l)
	ssc_st=$(grep -i "Strict" samesite_cookies| wc -l)
	ssc_lx=$(grep -i "Lax" samesite_cookies| wc -l)
	ssc_no=$(grep -i "None" samesite_cookies| wc -l)
	##Path 

	awk -F";" '{ for ( n=1; n<=NF; n++ ) if(tolower($n)~"path=") print $n }' site_cookies > cookies_path
	n_path=$(cat cookies_path| wc -l)
	mpath=$(grep -iw "path=/" cookies_path | wc -l)   #Have "/" Path 
	opath=$(grep -ivw "path=/" cookies_path | wc -l)

	echo -e $site"\t"$status"\t"$n_cookies"\t"$httpO"\t"$sec"\t"$ssc"\t"$ssc_st"\t"$ssc_lx"\t"$ssc_no"\t"$n_path"\t"$mpath"\t"$opath >> sitecookies_report.tsv

	mv $site http-responses/

done < $file_sites



