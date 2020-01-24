#' Helper function which rounds p-values
#'
#' p-values are rounded in a sane way: .99 - .01 to two digits, < .01 to three digits, < .001 to four digits.
#'
#' @usage round_ps(x)
#'
#' @param x a numeric vector
#'
#' @return A character vector with the same length of x.
#'
#' @author Henrik Singmann
#'
#' @encoding UTF-8
#'
#' @export round_ps
#' @examples
#' round_ps(runif(10))
#'
#' round_ps(runif(10, 0, .01))
#'
#' round_ps(runif(10, 0, .001))
#'
#' round_ps(0.0000000099)
#'

round_ps <- function(x) {
  ifelse(x < .001,
         "< .001",
        format(round(x, 3), nsmall = 3)
  )
}
