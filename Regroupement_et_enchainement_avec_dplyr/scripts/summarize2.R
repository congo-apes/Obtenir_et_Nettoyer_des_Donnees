# Ne modifiez pas le code ci-dessous. Tapez simplement submit() 
# lorsque vous pensez l'avoir compris.

# Nous avons déjà fait cette partie, mais nous la répétons ici 
# pour plus de clarté.

par_paquet <- group_by(cran, paquet)
res_paq <- summarize(par_paquet,
										 compte = n(),
										 unique = n_distinct(ip_id),
										 pays = n_distinct(pays),
										 octets_moyens = mean(taille))

# Voici la nouvelle partie, mais en utilisant la même approche 
# que celle que nous utilisons depuis le début.

meilleurs_pays <- filter(res_paq, pays > 60)
resultat1 <- arrange(meilleurs_pays, desc(pays), octets_moyens)

# Imprimez les résultats dans la console.
print(resultat1)
