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
#' @export
#' @importFrom magrittr %>%
edge_plot <- function(tiles) {

  tiles <- ggtern::xy2tlr(data = put_tiles(tiles = tiles),
                          coord = ggtern::coord_tern()) %>%
    ggtern::ggtern(mapping = ggtern::aes(x, y, z, colour = colour)) +
    ggplot2::geom_point(size = 4) +
    ggplot2::scale_colour_identity() +
    ggtern::scale_T_continuous(breaks = c(0, .25, .5, .75, 1)) +
    ggtern::scale_L_continuous(breaks = c(0, .25, .5, .75, 1)) +
    ggtern::scale_R_continuous(breaks = c(0, .25, .5, .75, 1)) +
    ggplot2::theme_dark() +
    ggplot2::theme(panel.grid.major = ggplot2::element_line(colour = "white")) +
    ggtern::theme_hidegrid_minor() +
    ggtern::theme_hidetitles() +
    ggtern::theme_hidelabels() +
    ggtern::theme_hideticks()

  return(tiles)

}
