context("match_edge")

test_that("the first tile matches", {
  expect_equal(match_edge(tiles = list(),
                          tile = c("green", "red", "yellow")),
               TRUE)
})

test_that("the (n^2+1)th tile matches (i.e. a new row)", {
  expect_equal(match_edge(tiles = list(c("green", "red", "yellow")),
                          tile = c("green", "yellow", "white")),
               TRUE)

  expect_equal(match_edge(tiles = list(c("green", "red", "yellow")
                                       ,c("green", "yellow", "white")
                                       ,c("white", "white", "blue")
                                       ,c("blue", "black", "white")),
                          tile = c("green", "yellow", "white")),
               TRUE)
})

test_that("upward triangles match correctly", {
  expect_false(match_edge(tiles = list(c("green", "red", "yellow")
                                       ,c("green", "yellow", "white")
                                       ,c("white", "white", "blue")),
                          tile = c("blue", "black", "white")))

  expect_equal(match_edge(tiles = list(c("green", "red", "yellow")
                                       ,c("green", "yellow", "white")
                                       ,c("white", "white", "blue")),
                          tile = c("white", "black", "white")),
               TRUE)
})

test_that("downward triangles match correctly", {
  expect_equal(match_edge(tiles = list(c("green", "red", "yellow")
                                       ,c("green", "yellow", "white")),
                          tile = c("white", "white", "blue")),
               FALSE)

  expect_equal(match_edge(tiles = list(c("green", "red", "yellow")
                                       ,c("green", "yellow", "white")),
                          tile = c("white", "yellow", "yellow")),
               TRUE)
})

