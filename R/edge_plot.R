#' Plot an edge matching puzzle.
#'
#' @param tiles List of character vectors of the form
#'     list(c("red", "yellow", "blue"), ..., c("white", "black", "green")) of
#'     length 16. This list represents the colours of the dots on 16 equilateral
#'     triangle tiles that will tessalate into a larger triangle.
#'     \code{tiles} should start with the bottom left tile and end with the
#'     top tile, moving left to right, row by row. The colours within each
#'     character vector go along each triangle from left to right (e.g. not
#'     clock-wise or top to bottom).
#' @return A ternary diagram displaying the puzzle
#'
#' @examples
#' edge_plot(tiles = rep(list(c("black", "white", "blue")), 16))

edge_plot <- function(tiles = list(c("green", "red", "yellow")
                         ,c("green", "yellow", "white")
                         ,c("white", "white", "blue")
                         ,c("blue", "black", "white")
                         ,c("white", "green", "red")
                         ,c("black", "green", "red")
                         ,c("green", "black", "black")

                         ,c("yellow", "green", "white")
                         ,c("blue", "yellow", "red")
                         ,c("green", "red", "black")
                         ,c("blue", "white", "blue")
                         ,c("white", "black", "blue")

                         ,c("red", "yellow", "white")
                         ,c("yellow", "black", "blue")
                         ,c("green", "yellow", "black")

                         ,c("green", "black", "red"))) {

  tiles <- xy2tlr(data = put_tiles(tiles = tiles),
                  coord = coord_tern()) %>%
    ggtern::ggtern(mapping = aes(x, y, z, colour = colour)) +
    geom_point(size = 4) +
    scale_colour_identity() +
    scale_T_continuous(breaks = c(0, .25, .5, .75, 1)) +
    scale_L_continuous(breaks = c(0, .25, .5, .75, 1)) +
    scale_R_continuous(breaks = c(0, .25, .5, .75, 1)) +
    theme_dark() +
    theme(panel.grid.major = element_line(colour = "white")) +
    theme_hidegrid_minor() +
    theme_hidetitles() +
    theme_hidelabels() +
    theme_hideticks()

  return(tiles)

}