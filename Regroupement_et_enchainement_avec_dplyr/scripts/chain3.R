# Utilisez filter() pour sélectionner toutes les lignes pour 
# lesquelles taille_mo est inférieur ou égal à (<=) 0.5.
# 
# Si vous voulez que vos résultats soient imprimés sur la 
# console, ajoutez print à la fin de votre chaîne.

cran %>%
	select(ip_id, pays, paquet, taille) %>%
	mutate(taille_mo = taille / 2^20) %>%
	# Votre appel à filter() va ici.
