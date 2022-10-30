.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

.chemin_csv <- file.path(.get_course_path(),
                      'Obtenir_et_Nettoyer_des_Donnees',
                      'Regroupement_et_enchainement_avec_dplyr',
                      '2014-07-08.csv')
mon_df <- read.csv(.chemin_csv, as.is = TRUE)

cran <- as_tibble(mon_df)
par_paquet <- group_by(cran, package)
