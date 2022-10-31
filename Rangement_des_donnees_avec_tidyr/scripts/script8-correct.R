# Réaliser les trois objectifs suivants :
# 
# 1. select() toutes les colonnes qui ne contiennent PAS le mot 
# "total", puisque si nous avons les données hommes et femmes, 
# nous pouvons toujours recréer le compte total dans une colonne 
# séparée, si nous le voulons. Conseil : utilisez la fonction 
# contains(), que vous trouverez détaillée dans la section "Special 
# Functions" de ?select.
# 
# 2. gather() toutes les colonnes SAUF gamme_de_scores, en utilisant 
# key = part_sexe et value = compte.
# 
# 3. separate() part_sex en deux variables (colonnes) distinctes, 
# appelées respectivement "part" et "sexe". Vous devrez peut-être 
# consulter la section "Exemples" de ?separate pour vous rappeler 
# comment l'argument "into" doit être formulé.

sat %>%
  select(-contains("total")) %>%
  gather(part_sexe, compte, -gamme_de_scores) %>%
  separate(part_sexe, c("part", "sexe")) %>%
  print
