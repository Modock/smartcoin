# smartcoin
Optimiser les recherches LBC


1 : Noter la page de recherche. 
2 : Définir les critères supplémentaires.
3 : Déroulement du script : 
	ouvrir la page de la recherche
	A : Boucle sur toutes les page (o=1 à o= ?)
	A.1 : Sur les prix : 
		On peut déjà filtrer les prix sur des fourchettes plus précises.
	A.2 : Sur le titre : 
		On peut exclure des mot clés. => PAS NECESSAIRE, il suffit de mettre - devant le mot à exlure dans la recherche.
	B : Donc, si le titre et le prix conviennent, alors le script ouvre l'annonce
	B2 : Code postal : On peut donner une liste de code postaux, et vérifier que l'annonce est conforme. Attention si pas cd CP dans l'annonce
	B3 : Dans la description, liste des mots clé qui doivent être présents et ceux qui ne doivent pas l'être
	
	
	chercher la présence des critères supplémentaires
	si OK envoi message
	

Fait : 
A : 
Faire une boucle sur toutes les pages, en incrémentant o=
Obtenir un fichier avec toutes les annonces

A faire dans l'ordre
A:
Récupérer aussi le titre dans le fichier result.tmp
Formatter le fichier result.tmp pour ne laisser que l'URL, le titre et le prix, bien formaté
Limiter ce fichier sur une fourchette de prix

B : 
Faire boucle sur les résultats restants dans result.tmp
