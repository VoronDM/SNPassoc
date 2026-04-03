#' @export
`additive.WGassociation` <-
  function(o) {
    attr(o, "pvalues")[, "log-additive"]
  }
