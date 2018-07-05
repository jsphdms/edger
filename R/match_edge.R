#' Check if a tile matches onto a given permutation of tiles.
#'
#' @param tiles List of character vectors from the \code{edge_plot()}
#'     parameter \code{tiles}.
#' @param tile character vector in the form of a element of \code{tiles}.
#' @return Boolean indicating whether \code{tile} will fit onto \code{tiles}.
#'
#' @examples
#' match_edge(tiles = rep(list(c("black", "white", "blue")), 15),
#'            tile = c("black", "white", "blue"))

match_edge <- function(tiles, tile) {

  stopifnot(
    is.list(tiles),
    is.vector(tile),
    length(tile) == 3
  )

  l <- length(tiles)
  n <- floor(sqrt(l))
  k <- l - n

  if (identical(sqrt(l), n)) {
    return(TRUE)
  } else if (k %% 2 == 0) {
    if (tiles[[l]][[1]] == tile[[1]]) return(TRUE)
  } else if (k %% 2 == 1) {
    if (tiles[[l]][[2]] == tile[[2]] &&
        tiles[[(n - 1)^2 + k]][[3]] == tile[[3]]) return(TRUE)
  }

  return(FALSE)

}
