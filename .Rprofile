setHook("rstudio.sessionInit", function(newSession) {
 if (newSession)
  {
    rstudioapi::navigateToFile("~/tutoriel/inst/tutoriel/tutoriel.Rmd")
    rmarkdown::run("~/tutoriel/inst/tutoriel/tutoriel.Rmd")
  }
}, action = "append")
