# Ajoutez un appel à unique() ci-dessous, qui supprimera les 
# lignes en double de student_info.
# 
# Comme avec l'appel à la fonction print() ci-dessous, vous 
# pouvez omettre les parenthèses après le nom de la fonction. 
# Il s'agit d'une fonctionnalité intéressante de %>% qui 
# s'applique lorsqu'il n'y a pas d'arguments supplémentaires 
# à spécifier.

info_etudiants <- etudiants4 %>%
	select(id, nom, sexe) %>%
  unique %>%
  print
