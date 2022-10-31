# Ajoutez deux autres appels de fonction pour accomplir ce 
# qui suit :
# 
# 1. Utilisez group_by() (de dplyr) pour regrouper les données 
# par part et par sexe, dans cet ordre.
# 
# 2. Utilisez mutate pour ajouter deux nouvelles colonnes, 
# dont les valeurs seront automatiquement calculées groupe 
# par groupe :
# 
#   * total = sum(compte)
#   * prop = compte / total

sat %>%
  select(-contains("total")) %>%
  gather(part_sexe, compte, -gamme_de_scores) %>%
  separate(part_sexe, c("part", "sexe")) %>%
  group_by(part, sexe) %>%
  mutate(total = sum(compte),
         prop = compte / total
  ) %>% print
