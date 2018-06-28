#' Transform a tile.
#'
#' @param tile_in Data.frame with two columns (x and y) and three rows (one for
#'     each dot)
#' @param scale Numeric between 0 and 1
#' @param rotate Boolean specifying whether to relect tile in the y axis (i.e.
#'     turn upside down)
#' @param x Numeric between 0 and 0.75 for horizontal translation
#' @param y Numeric between 0 and 3^.5/2 (the height of an equilateral triangle
#'     of unit side length) for vertical translation
#' @return A transformed tile
#'
#' @examples
#' r <- (2*3^.5+4)^-1
#' h <- r * (3^.5+1)
#' big_tile <- data.frame(x = c(.5-r, .5, .5+r),
#'                        y = c(h, r, h))
#'
#' put_tile(tile = big_tile, rotate = TRUE, x = .125)

put_tile <- function(tile_in, scale = .25, rotate = FALSE,
                           x = 0, y = 0) {

  tile_out <- tile_in

  if (rotate) {
    tile_out[["y"]] <- 3^.5/2 - tile_in[["y"]]
    tile_out[["x"]] <- 1      - tile_in[["x"]]
  }

  tile_out[["x"]] <- tile_out[["x"]] + x
  tile_out[["y"]] <- tile_out[["y"]] + y
  tile_out <- tile_out*scale

  return(tile_out)

}
