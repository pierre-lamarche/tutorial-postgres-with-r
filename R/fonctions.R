launch_tutorial <- function(file, port = 8181, host = 'localhost') {
  rmarkdown::run(file = file,
                 shiny_args = list(host = host, port = port, launch.browser = FALSE))
}