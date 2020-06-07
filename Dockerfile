FROM rocker/verse
RUN apt-get update && apt-get install -y  git-core libcurl4-openssl-dev libssl-dev libxml2-dev make pandoc zlib1g-dev pandoc-citeproc libarchive-dev libudunits2-dev
ENV PGRP_HOST
RUN Rscript -e 'install.packages("learnr")'
RUN Rscript -e 'remotes::install_github("pierre-lamarche/tutorial-postgres-with-r")'
EXPOSE 8181
CMD  ["R", "-e", "postgres.with.r::launch_tutorial(file = system.file('tutoriel/tutoriel.Rmd', package = 'postgres.with.r'), port = 8181, host = '0.0.0.0')"]