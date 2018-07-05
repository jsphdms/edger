#' Turn a list of coloured tiles into a dataframe ready for plotting.
#'
#' @param tiles_in List of character vectors from the \code{edge_plot()}
#'     parameter \code{tiles}.
#' @return Data.frame with the xy coordinates and colour for all of the dots for
#'     all 16 tiles.
#'
#' @examples
#' put_tiles(list(c("green", "red", "yellow")
#' ,c("green", "yellow", "white"),
#' c("white", "white", "blue")
#' ,c("blue", "black", "white")
#' ,c("white", "green", "red")
#' ,c("black", "green", "red")
#' ,c("green", "black", "black")
#' ,c("yellow", "green", "white")
#' ,c("blue", "yellow", "red")
#' ,c("green", "red", "black")
#' ,c("blue", "white", "blue")
#' ,c("white", "black", "blue")
#' ,c("red", "yellow", "white")
#' ,c("yellow", "black", "blue")
#' ,c("green", "yellow", "black")
#' ,c("green", "black", "red")))

put_tiles <- function(tiles_in) {

  r <- (2*3^.5+4)^-1
  h <- r * (3^.5+1)
  y <- 3^.5/2
  tile_seed <- data.frame(x = c(.5-r, .5+r, .5),
                              y = c(h, h, r))

  tiles_out <- tile_seed %>% {rbind(

    put_tile(., x = 1.5, y = 3*y),

    put_tile(., x = 1, y = 2*y),
    put_tile(., rotate = TRUE, x = 1.5, y = 2*y),
    put_tile(., x = 2, y = 2*y),

    put_tile(., x = .5, y = y),
    put_tile(., rotate = TRUE, x = 1, y = y),
    put_tile(., x = 1.5, y = y),
    put_tile(., rotate = TRUE, x = 2, y = y),
    put_tile(., x = 2.5, y = y),

    put_tile(.),
    put_tile(., rotate = TRUE, x = .5),
    put_tile(., x = 1),
    put_tile(., rotate = TRUE, x = 1.5),
    put_tile(., x = 2),
    put_tile(., rotate = TRUE, x = 2.5),
    put_tile(., x = 3)

    )}

  tiles_out[["colour"]] <- purrr::flatten_chr(tiles_in)

  return(tiles_out)

}
