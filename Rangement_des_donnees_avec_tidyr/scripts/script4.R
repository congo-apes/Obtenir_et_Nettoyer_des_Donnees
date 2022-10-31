# Nous voulons que les valeurs des colonnes de classe soient
# 1, 2, ..., 5 et non classe1, classe2, ..., classe5.
# 
# Utilisez la fonction mutate() de dplyr avec parse_number(). 
# Conseil : Vous pouvez "écraser" une colonne avec mutate() 
# en affectant une nouvelle valeur à la colonne existante au 
# lieu de créer une nouvelle colonne.
# 
# Consultez ?mutate et/ou ?parse_number si vous avez besoin 
# d'un rafraîchissement.

etudiants3 %>%
  gather(classe, note, classe1:classe5, na.rm = TRUE) %>%
  spread(test, note) %>%
  # L'appel à mutate() se passe ici %>%
  print
