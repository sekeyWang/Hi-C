From r-base
Run apt-get update && \
  apt-get install -y libcurl4-openssl-dev libssl-dev libssh2-1-dev libxml2-dev zlib1g-dev
RUN R -e "install.packages('optparse')"\
  R -e "install.packages(c('devtools', 'testthat', 'roxygen2'))"\
  R -e "library(devtools)" \
  R -e "install_github(\"wbaopaul/rGMAP\")" 
