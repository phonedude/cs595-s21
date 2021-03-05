declare -a websites
declare -i x

x=$((0))
websites=(aboutads.info academia.edu accounts.google.com adweek.com akamaihd.net apple.com archive.org arstechnica.com asus.com bandcamp.com bit.ly box.com calendar.google.com cbc.ca chaturbate.com chicagotribune.com cisco.com cloudflare.com cnil.fr cocolog-nifty.com cointernet.com.co coursera.org de.wikipedia.org deezer.com dell.com ea.com ebay.co.uk ebay.com ed.gov eff.org elpais.com elsevier.com facebook.com fb.com fda.gov forbes.com gizmodo.com globo.com goodreads.com google.co.id google.co.jp google.pl google.ru gravatar.com hatena.ne.jp hp.com ibm.com ietf.org imageshack.com ipv4.google.com irs.gov jstor.org kickstarter.com lefigaro.fr loc.gov marriott.com metro.co.uk mhlw.go.jp naver.com networkadvertising.org newyorker.com nytimes.com opera.com orange.fr pbs.org pewresearch.org picasa.google.com pinterest.co.uk pixabay.com plos.org popsugar.com quora.com rakuten.co.jp rediff.com reuters.com sapo.pt search.google.com shutterstock.com standard.co.uk stanford.edu state.gov steamcommunity.com storage.canalblog.com stores.jp tabelog.com ted.com trustpilot.com usgs.gov vimeo.com w3.org welt.de wikimedia.org wordpress.org wsj.com www.over-blog.com www.wix.com yahoo.co.jp yandex.ru youronlinechoices.com)
echo -e $"Site Name""\t""Exit Status""\t""# Cookies""\t""# HttpOnly""\t""# Secure""\t""# SS""\t""#Strict""\t""# Lax""\t""# None""\t""# Set Path""\t""# Other" >> table.tsv

#Prints all curl info to text file
for i in "${websites[@]}"
do
	x=$((x+1))
	curl -ILks www.$i >> websites/curl/$i.txt
	
	echo $x $i
done

#Parses files for required info
for i in "${websites[@]}"
do
	x=$((x+1))
	
	file=websites/curl/$i.txt
	
	site_name=$i
	exit_status=$(grep ^"HTTP" ${file} | tail -1 | cut -d" " -f2)
	grep -i "set-cookie" ${file} >> websites/cookies/$i.txt
	numOfCookies=$(grep -i ^"set-cookie" websites/cookies/$i.txt | wc -l)
	
	printf $numOfCookies" ">>numOfCookiesList.txt

	numHttpOnly=$(grep -oi "httponly" websites/cookies/$i.txt | wc -l)
	numSecure=$(grep -oi "secure" websites/cookies/$i.txt | wc -l)
	
	numSameSite=$(grep -oi "samesite" websites/cookies/$i.txt | wc -l)
	numStrict=$(grep -i "samesite=strict" websites/cookies/$i.txt | wc -l)
	numLax=$(grep -i "samesite=lax" websites/cookies/$i.txt | wc -l)
	numNone=$(grep -i "samesite=none" websites/cookies/$i.txt | wc -l)
	
	numSetPath=$(grep -iw "path=/" websites/cookies/$i.txt | wc -l)
	numSetPathOther=$(grep -ivw "path=/" websites/cookies/$i.txt | wc -l)
	echo ${numOfCookies}
	#echo ${numHttpOnly}
	
	echo -e $site_name"\t"$exit_status"\t"$numOfCookies"\t"$numHttpOnly"\t"$numSecure"\t"$numSameSite"\t"$numStrict"\t"$numLax"\t"$numNone"\t"$numSetPath"\t"$numSetPathOther >> table.tsv
done

#sleep 60