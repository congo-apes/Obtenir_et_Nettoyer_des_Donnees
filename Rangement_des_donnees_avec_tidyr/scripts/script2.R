# Appelez gather() pour rassembler les colonnes classe1 à 
# classe5 dans une nouvelle variable appelée classe. La "key" 
# doit être class, et la "value" doit être grade.
# 
# tidyr permet de référencer facilement plusieurs colonnes 
# adjacentes avec classe1:classe5, tout comme avec des 
# séquences de chiffres.
# 
# Étant donné que chaque étudiant n'est inscrit que dans 
# deux des cinq classes possibles, il y a beaucoup de valeurs 
# manquantes (c'est-à-dire des NA). Utilisez l'argument 
# na.rm = TRUE pour omettre ces valeurs du résultat final.
# 
# N'oubliez pas que lorsque vous utilisez l'opérateur %>%, 
# la valeur située à gauche de celui-ci est insérée comme 
# premier argument de la fonction située à droite.
# 
# Consultez ?gather et/ou ?chain si vous êtes bloqué.

etudiants3 %>%
  gather( , , : , = TRUE) %>%
  print
