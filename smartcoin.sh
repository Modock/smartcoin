curl "https://www.leboncoin.fr/ventes_immobilieres/offres/pays_de_la_loire/?th=1&ps=0&pe=1&ret=3" > page.tmp

# on récupère les prix et les liens
grep "itemprop=\"price\"" page.tmp >prix.tmp
grep "htm?ca=18_s\" title" index.html\?th\=1\&ps\=0\&pe\=1\&ret\=3 |grep list_item | cut -d"<" -f2 |cut -d" " -f2 >liens.tmp

# On met les liens et les prix sur la même ligne dans le fichier resultat
paste -d ' ' liens.tmp prix.tmp >result.tmp

