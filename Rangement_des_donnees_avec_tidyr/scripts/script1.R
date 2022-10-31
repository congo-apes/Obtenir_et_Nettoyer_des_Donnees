# Répétez vos appels à gather() et separate(), mais cette 
# fois, utilisez l'opérateur %>% pour enchaîner les commandes 
# sans stocker de résultat intermédiaire.
# 
# Si c'est la première fois que vous voyez l'opérateur %>%, 
# consultez ?chain, qui fera apparaître la documentation 
# correspondante. Vous pouvez également consulter la section 
# Exemples au bas de ?gather et ?separate.
# 
# L'idée principale est que le résultat à gauche de %>% prend 
# la place du premier argument de la fonction à droite. Par 
# conséquent, vous omettez le premier argument de chaque fonction.

etudiants2 %>%
  gather( , , ) %>%
  separate( , c("", "")) %>%
  print
