library(dplyr)

.ng <- 5
.gmax <- 8

set.seed(1234)
etudiants <- data.frame(
  cours = LETTERS[1:.ng],
  male = sample(0:.gmax, .ng, replace = TRUE),
  femelle = sample(0:.gmax, .ng, replace = TRUE)
)

set.seed(1211)
etudiants2 <- data.frame(
  note = LETTERS[1:.ng],
  male_1 = sample(0:.gmax, .ng, replace = TRUE),
  femelle_1 = sample(0:.gmax, .ng, replace = TRUE),
  male_2 = sample(0:.gmax, .ng, replace = TRUE),
  femelle_2 = sample(0:.gmax, .ng, replace = TRUE)
)

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

.lesson_path <- file.path(.get_course_path(),
                          'Obtenir_et_Nettoyer_des_Donnees',
                          'Rangement_des_donnees_avec_tidyr')

.path2s3 <- file.path(.lesson_path, 'students3.csv')
etudiants3 <- read.csv(.path2s3, na.strings = "", stringsAsFactors = FALSE)

.path2s4 <- file.path(.lesson_path, 'students4.csv')
etudiants4 <- read.csv(.path2s4, stringsAsFactors = FALSE)

reussir <- etudiants4 %>%
  select(nom, cours, final) %>%
  filter(final == "A" | final == "B")
echoue <- etudiants4 %>%
  select(nom, cours, final) %>%
  filter(final == "C" | final == "D" | final == "E")

.path2sat <- file.path(.lesson_path, 'sat13.csv')
sat <- tbl_df(read.csv(.path2sat, stringsAsFactors = FALSE))

