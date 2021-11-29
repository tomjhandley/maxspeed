# Libraries and packages
library(dplyr)
library(devtools)
use_package("readxl")
use_package("dplyr")
library(readxl)
library(readr)
#################################

readxl::read_excel("maxspeeddatabase.xlsx") %>%
  dplyr::rename(tax_grp = `taxonomic group`,
                locomotion = `locomotion mode`,
                mass_kg = `body mass [kg]`,
                mass_ref = `mass ref.`,
                max_spd_kmh = `max. speed [km/h]`,
                speed_ref = `speed ref.`,
                diet = `primary diet`) %>%
  saveRDS("analysis/data/derived_data/maxspeed.RDS")

#Speed model
use_r("speed_model")
