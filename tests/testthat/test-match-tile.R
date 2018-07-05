context("match_tile")

test_that("the first tile matches", {
  expect_equal(match_tile(tiles = list(),
                          tile = c("green", "red", "yellow")),
               c("green", "red", "yellow"))
})

test_that("a new row matches", {
  expect_equal(match_tile(tiles = list(c("green", "red", "yellow")),
                          tile = c("green", "yellow", "white")),
               c("green", "yellow", "white"))

  expect_equal(match_tile(tiles = list(c("green", "red", "yellow")
                                       ,c("green", "yellow", "white")
                                       ,c("white", "white", "blue")
                                       ,c("blue", "black", "white")),
                          tile = c("green", "yellow", "white")),
               c("green", "yellow", "white"))
})

test_that("upward triangles match correctly", {
  expect_false(match_tile(tiles = list(c("green", "red", "yellow")
                                       ,c("green", "yellow", "white")
                                       ,c("white", "white", "blue")),
                          tile = c("blue", "black", "yellow")))

  expect_equal(match_tile(tiles = list(c("green", "red", "yellow")
                                       ,c("green", "yellow", "white")
                                       ,c("white", "white", "blue")),
                          tile = c("white", "black", "white")),
                    c("white", "black", "white"))
})

test_that("downward triangles match correctly", {
  expect_false(match_tile(tiles = list(c("green", "red", "yellow")
                                       ,c("green", "yellow", "white")),
                          tile = c("white", "white", "blue")))

  expect_equal(match_tile(tiles = list(c("green", "red", "yellow")
                                       ,c("green", "yellow", "white")),
                          tile = c("white", "yellow", "yellow")),
                    c("white", "yellow", "yellow"))
})
