# Ce script s'appuie sur le précédent en ajoutant un appel 
# à spread(), qui nous permettra de transformer les valeurs 
# de la colonne de test, midterm et final, en en-têtes de 
# colonne (c'est-à-dire en variables).
# 
# Vous ne devez spécifier que deux arguments à spread(). 
# Pouvez-vous les identifier ? (Indice : vous n'avez pas 
# besoin de spécifier l'argument données puisque nous 
# utilisons l'opérateur %>%.

etudiants3 %>%
  gather(classe, note, classe1:classe5, na.rm = TRUE) %>%
  spread(test, note) %>%
  print
