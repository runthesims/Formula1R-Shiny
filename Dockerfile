FROM rocker/tidyverse:latest

## update system libraries
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean

# system libraries of general use
RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    libxml2-dev \
    libcairo2-dev \
    libsqlite3-dev \
    libmariadbd-dev \
    libpq-dev \
    libssh2-1-dev \
    unixodbc-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    curl

RUN R -e "install.packages(c('DBI', 'RPostgres', 'shiny', 'shinycssloaders', 'shinyWidgets', 'shinydashboard', 'shinyjs', 'glue', 'reactablefmtr', 'htmltools', 'sqldf'), repos='http://cran.rstudio.com/', dependencies = T)"