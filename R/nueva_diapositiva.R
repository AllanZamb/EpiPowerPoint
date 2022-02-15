#' Agregar nuevo Slide o nueva Diapositiva
#' @export

nueva_diapositiva <- function(.,design){

  officer::add_slide(., layout = design , master = "1_Tema de Office")

}



