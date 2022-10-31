# select() les colonnes id, class, midterm, et final (dans cet 
# ordre) et stocker le résultat dans le carnet de notes.

carnet_notes <- etudiants4 %>%
  select(id, classe, miparcours, final) %>%
  print
