# Lisez le code ci-dessous, mais ne changez rien. En le lisant, 
# vous pouvez prononcer l'opérateur %>% comme le mot 'then'.
# 
# Tapez submit() lorsque vous pensez avoir tout compris.

resultat3 <-
  cran %>%
  group_by(package) %>%
  summarize(compte = n(),
            unique = n_distinct(ip_id),
            pays = n_distinct(country),
            octets_moyens = mean(size)
  ) %>%
  filter(pays > 60) %>%
  arrange(desc(pays), octets_moyens)

# Imprimez le résultat sur la console.
print(resultat3)
