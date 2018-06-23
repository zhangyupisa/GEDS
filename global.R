# share the vairiables


# For the global configuration --------------------------------------------
# Store variable in config ------------------------------------------------
config <- list()

# Version -----------------------------------------------------------------
config$version <- "0.0.1"


# Working directory -------------------------------------------------------
# default getwd()
# in development mode, change the config$wd to your working directory

config$wd <- "/home/liucj/github/GSEXPR"
#config$wd <- 

# Databases ---------------------------------------------------------------
config$database <- "/data/shiny-data/GSEXPR"

# Absolute paths ----------------------------------------------------------
# server
config$serv <- file.path(config$wd, "serv")

# ui
config$ui <- file.path(config$wd, "ui")

# functions
config$func <- file.path(config$wd, "func")

# user data
config$usrdat <- file.path(config$wd, "usrdat")

# logs
config$logs <- "logs"

# Path to zip -------------------------------------------------------------
Sys.setenv("R_ZIPCMD" = "/usr/bin/zip")


