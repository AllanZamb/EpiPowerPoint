#' EpiPowerPoint es un paquete libre para diseño de presentaciones desde el entorno de RStudio
#' @export

leer_pptx <- function(direccion = "bin/pptx/Plantilla_2022.pptx"){

  invisible(capture.output(comprueba_Requisitos()))


  #Realizamos las alineaciones del texto
  .GlobalEnv$alineacion_centro <- fp_par(text.align = "center")
  .GlobalEnv$alineacion_izquierda <- fp_par(text.align = "left")
  .GlobalEnv$alineacion_derecha <- fp_par(text.align = "right")
  .GlobalEnv$alineacion_justificada <- fp_par(text.align = "justify")


  #Colocamos los posibles tipos de letra
  .GlobalEnv$fuente_normal <- fp_text(font.size = 20,
                                     bold = F,
                                     color = "white",
                                     font.family = "Montserrat" )

  .GlobalEnv$fuente_normal_negrita <- fp_text(font.size = 20,
                                              bold = T,
                                              color = "white",
                                              font.family = "Montserrat" )

  .GlobalEnv$fuente_titulo_general <- fp_text(font.size = 70,
                                              bold = T,
                                              color = "#E7DAC1",
                                              font.family = "Montserrat" )

  .GlobalEnv$fuente_titulo_diapositiva <- fp_text(font.size = 40,
                                                  bold = T,
                                                  color = "#6E152E",
                                                  font.family = "Montserrat" )

  .GlobalEnv$fuente_descripcion <- fp_text(font.size = 28,
                                           bold = F,
                                           color = "black",
                                           font.family = "Montserrat" )

  .GlobalEnv$fuente_fuente <- fp_text(font.size = 8,
                                      bold = F,
                                      color = "black",
                                      font.family = "Montserrat" )

  #REGRESAMOS UN OBJETO CON LA PLANTILLA
  return(officer::read_pptx(direccion))

}



