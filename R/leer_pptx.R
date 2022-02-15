#' EpiPowerPoint es un paquete libre para diseño de presentaciones desde el entorno de RStudio
#' @export

leer_pptx <- function(direccion = "bin/pptx/Plantilla_2022.pptx"){

  invisible(capture.output(comprueba_Requisitos()))

  #REGRESAMOS UN OBJETO CON LA PLANTILLA
  return(officer::read_pptx(direccion))

}



