
#' Esta función coge un df y calcula la media de cada columna
#'
#' @param df Un data.fram
#' @return Un nuevo df con la media de cada columna del df original \code{df}
#' @examples
#' my_fun_1(mtcars)
#' @export

#' @import instaR
#' @import psych

my_fun_1 <- function(df, print = TRUE) {
   result1 <- llamardescribeby(df)
   llamarhis(df)
   llamarboxplot(df)
   return(result1)
}

llamarhis <- function(Variable,print=FALSE){
  hist(Variable,col=445,main="Histograma de", lty=9)
}
llamarboxplot <- function(Datos,print=FALSE){
  boxplot(Datos,names=c("Variable"),col="#d73027")
  mtext("Grupos", side = 2, line = 2)
  mtext("Variable", side = 1, line = 7)
  mtext("Box Plot Para Vista de Valores Atipicos", side = 3, line = 2)
}
llamardescribeby <- function(Datos,print=FALSE){
  describeBy(Datos,group=NULL,mat = FALSE,type = 2,digits = 15)
}
