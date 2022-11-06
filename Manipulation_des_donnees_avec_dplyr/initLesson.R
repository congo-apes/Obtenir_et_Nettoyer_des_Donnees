.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

chemin_csv <- file.path(.get_course_path(),
                      'Obtenir_et_Nettoyer_des_Donnees',
                      'Manipulation_des_donnees_avec_dplyr',
                      '2014-07-08.csv')

cran <- as_tibble(read.csv(chemin_csv, stringsAsFactors = FALSE))
cran2 <- select(cran, taille:ip_id)
cran3 <- select(cran, ip_id, paquet, taille)
