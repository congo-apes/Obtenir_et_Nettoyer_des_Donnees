# Ne modifiez pas le code ci-dessous. Tapez simplement 
# submit() lorsque vous pensez l'avoir compris. Si vous 
# trouvez cela confus, vous avez tout à fait raison !

resultat2 <-
  arrange(
    filter(
      summarize(
        group_by(cran,
                 package
        ),
        compte = n(),
        unique = n_distinct(ip_id),
        pays = n_distinct(country),
        octets_moyens = mean(size)
      ),
      pays > 60
    ),
    desc(pays),
    octets_moyens
  )

print(resultat2)
