library(testthat)

# stub install.packages to prevent network installations during test
install.packages <- function(...) { invisible(NULL) }
# supply a value so install.packages(here) works
assign("here", "here", envir = .GlobalEnv)

script_path <- file.path("..", "scripts", "r", "clean_defense_spending.R")
source(script_path, local = TRUE)

# check output file
output_file <- file.path("..", "data", "processed", "eda_defense_spending.csv")

test_that("output file is created", {
  expect_true(file.exists(output_file))
})

test_that("CSV has expected columns", {
  df <- read.csv(output_file)
  expected_cols <- c(
    "Country",
    "Year",
    "Defense_Expenditure_Billions",
    "Defense_Expenditure_Pct_GDP",
    "GDP_Billions"
  )
  expect_true(all(expected_cols %in% names(df)))
  expect_false(any(is.na(df$Country)))
  expect_false(any(is.na(df$Year)))
})
