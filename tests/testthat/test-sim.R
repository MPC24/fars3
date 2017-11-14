context("Test the file compisition of the data")



test_that("fars_read() works properly", {

  file <- "accident_2013.csv.bz2"
  acc <- system.file("extdata", file, package = "fars3")
  acc <- fars_read(acc)
  expect_equal(nrow(acc), 30202)
  expect_is(acc,"data.frame")
})


