setHook("rstudio.sessionInit", function(newSession) {
 if (newSession)
  {
    rstudioapi::navigateToFile("~/inst/tutoriel/tutoriel.Rmd")
    rmarkdown::run("~/inst/tutoriel/tutoriel.Rmd")
  }
}, action = "append")
