#' Try fitting as many candidate tiles onto the given attempt as possible
#'
#' @param candidates List of tiles which haven't been placed yet
#' @param attempt List of tiles which have been placed
#'
#' @return List of two lists names attempt and discard. attempt is a list of
#' tiles that is at least as long as the input parameter \code{attempt}. discard
#' is the list of tiles which could not be fitted onto \code{attempt}.
#'
#' @examples
#'

edge_try <- function(attempt, candidates) {

  discard <- list()

  while(length(candidates) > 0) {

    l <- length(attempt)
    match <- match_tile(tiles = attempt, tile = candidates[[1]])

    if (identical(match, FALSE)) {
      discard[[length(discard) + 1]] <- list(candidates[[1]])
    } else {
      attempt[l + 1] <- list(match)
    }
    candidates <- candidates[-1]
  }

  return(list(attempt = attempt,
              discard = discard))

}
