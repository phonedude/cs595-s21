declare -a websites
declare -i x

x=$((0))
websites=(aboutads.info academia.edu accounts.google.com adweek.com akamaihd.net apple.com archive.org arstechnica.com asus.com bandcamp.com bit.ly box.com calendar.google.com cbc.ca chaturbate.com chicagotribune.com cisco.com cloudflare.com cnil.fr cocolog-nifty.com cointernet.com.co coursera.org de.wikipedia.org deezer.com dell.com ea.com ebay.co.uk ebay.com ed.gov eff.org elpais.com elsevier.com facebook.com fb.com fda.gov forbes.com gizmodo.com globo.com goodreads.com google.co.id google.co.jp google.pl google.ru gravatar.com hatena.ne.jp hp.com ibm.com ietf.org imageshack.com ipv4.google.com irs.gov jstor.org kickstarter.com lefigaro.fr loc.gov marriott.com metro.co.uk mhlw.go.jp naver.com networkadvertising.org newyorker.com nytimes.com opera.com orange.fr pbs.org pewresearch.org picasa.google.com pinterest.co.uk pixabay.com plos.org popsugar.com quora.com rakuten.co.jp rediff.com reuters.com sapo.pt search.google.com shutterstock.com standard.co.uk stanford.edu state.gov steamcommunity.com storage.canalblog.com stores.jp tabelog.com ted.com trustpilot.com usgs.gov vimeo.com w3.org welt.de wikimedia.org wordpress.org wsj.com www.over-blog.com www.wix.com yahoo.co.jp yandex.ru youronlinechoices.com)

echo -e $"Site Name""\t""Not Frameable (Deny)""\t""Frameable (Same Origin)" >> table.tsv
#Prints all curl info to text file

for i in "${websites[@]}"
do
	x=$((x+1))
	curl -ILks www.$i >> curl/$i.txt
	
	echo $x curling $i
done

denySum=$((0))
sameOriginSum=$((0))

for i in "${websites[@]}"
do
	x=$((x+1))
	
	s1="<iframe height='600' src="
	s2="style='border:0;' width='100%'></iframe>"
	src=www.${i}
	
	echo "<iframe src="https://www.${i}"></iframe>" >> pages/$i.html
	echo "<iframe src="https://www.${i}"></iframe>" >> main.html
	
	numDeny=$(($(grep -i ^"X-Frame-Options: DENY" curl/$i.txt | wc -l)))
	
	if [ "$numDeny" -eq "0" ]; then
        echo 0
    else
		numDeny=$((1))
        echo 1
    fi
	
	denySum=$((numDeny+denySum))
	
	numSameOrigin=$(($(grep -i ^"X-Frame-Options: SAMEORIGIN" curl/$i.txt | wc -l)))
	
	if [ "$numSameOrigin" -eq "0" ]; then
        echo 0
    else
		numSameOrigin=$((1))
        echo 1
    fi
	
	sameOriginSum=$((numSameOrigin+sameOriginSum))
	
	echo $numDeny $numSameOrigin
	echo -e $i"\t"$numDeny"\t"$numSameOrigin >> table.tsv
	#echo $x $i
done

echo $denySum $sameOriginSum

sleep 60
