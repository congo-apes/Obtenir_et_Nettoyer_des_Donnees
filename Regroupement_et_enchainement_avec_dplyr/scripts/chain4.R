# arrange() le résultat par taille_mo, en ordre décroissant.
# 
# Si vous voulez que vos résultats soient imprimés sur la 
# console, ajoutez print à la fin de votre chaîne.

cran %>%
	select(ip_id, pays, paquet, taille) %>%
	mutate(taille_mo = taille / 2^20) %>%
  filter(taille_mo <= 0.5) %>%
  # Votre appel à arrange() va ici.
