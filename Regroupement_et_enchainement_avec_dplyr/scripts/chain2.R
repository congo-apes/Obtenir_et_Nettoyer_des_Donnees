# Utilisez mutate() pour ajouter une colonne appelée taille_mo 
# qui contient la taille de chaque téléchargement en mégaoctets 
# (c'est-à-dire size / 2^20).
# 
# Si vous voulez que vos résultats soient imprimés sur la console, 
# ajoutez print à la fin de votre chaîne.

cran %>%
  select(ip_id, country, package, size) %>%
  mutate()
