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

echo -e "Site\tTstatus\tXframe\tCSP" >> siteframe_report.tsv

#site="cdc.gov"
while read site; do
	curl -ILsk $site -o $site

	status=$(grep ^"HTTP" $site | tail -1| cut -d" " -f2)
	xframe=$(grep -i ^"x-frame-options:" $site| tail -1|  tr -d $'\r')
	csp=$(grep -i ^"content-security-policy:" $site| tail -1|  tr -d $'\r')

	echo -e $site"\t"$status"\t"$xframe"\t"$csp >> siteframe_report.tsv

	mv $site http-responses/

done < $file_sites

cat siteframe_report.tsv | tr -d $'\r'> siteframe_report_updated.tsv


