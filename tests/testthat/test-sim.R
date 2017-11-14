context("Test the file compisition of the data")

library(dplyr)
library(maps)



test_that("fars_read() works correctly", {
  acc <- system.file("extdata", "accident_2013.csv.bz2", package="fars3")
  acc <- fars_read(acc)
  expect_equal(nrow(acc), 30202)
  expect_is(acc,"data.frame")
})


