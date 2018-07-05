#' Check if a tile (in any of the three rotations) matches onto a given
#' permutation of tiles.
#'
#' @param tiles List of character vectors from the \code{edge_plot()}
#'     parameter \code{tiles}.
#' @param tile character vector in the form of a element of \code{tiles}.
#'
#' @return If \code{tile} matches on to \code{tiles} in some rotation,
#' \code{TRUE}. Otherwise, \code{FALSE}.
#'
#' @examples
match_tile <- function(tiles, tile) {

  stopifnot(
    is.list(tiles),
    is.vector(tile),
    length(tile) == 3
  )

  rot <- 0
  tile_rot <- tile
  l <- length(tiles)

  while(rot <= 2) {
    if (match_edge(tiles = tiles, tile = tile_rot)) return(tile_rot)
    tile_rot <- c(tile_rot[2:3], tile_rot[[1]])
    rot <- rot + 1
  }
  return(FALSE)
}
