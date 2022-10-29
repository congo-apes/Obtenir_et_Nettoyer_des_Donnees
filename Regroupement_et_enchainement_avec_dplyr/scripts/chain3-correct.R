# Utilisez filter() pour sélectionner toutes les lignes pour 
# lesquelles taille_mo est inférieur ou égal à (<=) 0,5.
# 
# Si vous voulez que vos résultats soient imprimés sur la 
# console, ajoutez print à la fin de votre chaîne.

cran %>%
  select(ip_id, country, package, size) %>%
  mutate(taille_mo = size / 2^20) %>%
  filter(taille_mo <= 0.5)
