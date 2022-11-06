# select() les colonnes suivantes dans cran. N'oubliez pas 
# que lorsque vous utilisez l'opérateur de chaînage, vous 
# n'avez pas besoin de spécifier le nom de la tbl de données 
# dans votre appel à select().
# 
# 1. ip_id
# 2. pays
# 3. paquet
# 4. taille
# 
# L'appel à print() à la fin de la chaîne est facultatif, mais 
# nécessaire si vous voulez que vos résultats soient imprimés sur 
# la console. Notez que puisqu'il n'y a pas d'arguments supplémentaires 
# pour print(), vous pouvez laisser les parenthèses après le nom de la 
# fonction. Il s'agit d'une fonctionnalité pratique de l'opérateur %>%.

cran %>%
  select() %>%
	print
