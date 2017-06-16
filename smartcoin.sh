set -x
# Suppression des fichiers précédents
rm -f ./tmp/*.tmp

page=0
while [ $page -lt 99 ]; do

  page=$(($page + 1))

  curl "https://www.leboncoin.fr/ventes_immobilieres/offres/pays_de_la_loire/?th=1&ps=0&pe=1&ret=3&o=$page" > ./tmp/page.tmp
if grep "Aucune annonce" ./tmp/page.tmp ; then
	page=99
else
  # on récupère les prix et les liens
  grep "itemprop=\"price\"" ./tmp/page.tmp >./tmp/prix.tmp
  grep "htm?ca=18_s\" title" ./tmp/page.tmp |grep list_item | cut -d"<" -f2 |cut -d" " -f2 >./tmp/liens.tmp

  # On met les liens et les prix sur la même ligne dans le fichier resultat
  paste -d ' ' ./tmp/liens.tmp ./tmp/prix.tmp >>./tmp/result.tmp
fi
done

