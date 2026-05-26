# Formula1R-Shiny

Docker base image for Formula1 Shiny applications.

This image starts from `rocker/tidyverse:latest` and adds system libraries and R packages commonly needed by Formula1 Shiny dashboards, including database connectivity, Shiny UI helpers, and HTML/table formatting utilities.

## R Packages

The Docker image installs the following R packages:

- `DBI`
- `RPostgres`
- `pool`
- `shiny`
- `shinycssloaders`
- `shinyWidgets`
- `shinydashboard`
- `shinyjs`
- `glue`
- `reactablefmtr`
- `htmltools`
- `sqldf`
- `remotes`

`reactablefmtr` is installed from its public GitHub repository because it is not currently available from CRAN for the R version used by the base image.
