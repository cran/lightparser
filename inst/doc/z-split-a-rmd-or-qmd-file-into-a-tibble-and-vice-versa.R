## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(lightparser)

## ----examples-----------------------------------------------------------------
file <- system.file(
  "dev-template-parsing.Rmd",
  package = "lightparser"
)
split_to_tbl(file)

## ----example-combine_tbl_to_file----------------------------------------------
file <- system.file("dev-template-parsing.Rmd",
  package = "lightparser"
)
# split first
tbl_rmd <- split_to_tbl(file)
# apply your filters
tbl_rmd_filtered <- tbl_rmd[-5, ]
# combine then
combine_tbl_to_file(tbl_rmd_filtered, tempfile(fileext = ".Rmd"))

