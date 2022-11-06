# Calculez quatre valeurs, dans l'ordre suivant, à partir 
# des données groupées :
# 
# 1. compte = n()
# 2. unique = n_distinct(ip_id)
# 3. pays = n_distinct(pays)
# 4. octets_moyens = mean(taille)
# 
# Quelques points auxquels il faut faire attention :
# 
# 1. Séparer les arguments par des virgules.
# 2. Assurez-vous que vous avez une parenthèse de fermeture.
# 3. Vérifiez votre orthographe !
# 4. Enregistrez le résultat dans res_paq (pour 'résumé du paquet').
# 
# Vous devriez également jeter un coup d'œil à ?n et ?n_distinct, 
# afin de bien comprendre ce qui se passe.

res_paq <- summarize(par_paquet,
										 compte = n(),
										 unique = n_distinct(ip_id),
										 pays = n_distinct(pays),
										 octets_moyens = mean(taille))
