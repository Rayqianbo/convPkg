
#' A Function to handle NA values.  If column is a factor variable, the NA's are
#' converted to a separate factor level.  If column is numeric, the mean is imputed.

#' @param x A vector
#' @keywords impute mean NA
#' @export
#' @examples
#' iris[,c('Petal.Length','Petal.Width','Species')] <- lapply(iris[,c('Petal.Length','Petal.Width','Species')], function(x) naHandler(x))

naHandler <- function(x){
  if(sum(is.na(x)) > 0){
    if(is.factor(x) == TRUE){
      x <- addNA(x)
      return(x)
    }
    if(is.numeric(x) == TRUE){
      x <- meanImp(x)
    }
  }
  else{
    return(x)
  }
}
