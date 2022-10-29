.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

.chemin_csv <- file.path(.get_course_path(),
                      'Getting_and_Cleaning_Data',
                      'Grouping_and_Chaining_with_dplyr',
                      '2014-07-08.csv')
mon_df <- read.csv(.chemin_csv, as.is = TRUE)

cran <- as_tibble(mon_df)
par_paquet <- group_by(cran, package)
