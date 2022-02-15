#' Agregar propiedades a la diapositiva actual, nos enfocamos en un cuadro con texto
#' @export

cuadro_texto <- function(.,localizacion, enunciado, propiedades, alineacion){


  #Realizamos las alineaciones del texto
  .GlobalEnv$alineacion_centro <- fp_par(text.align = "center")
  .GlobalEnv$alineacion_izquierda <- fp_par(text.align = "left")
  .GlobalEnv$alineacion_derecha <- fp_par(text.align = "right")
  .GlobalEnv$alineacion_justificada <- fp_par(text.align = "justify")


  #Colocamos los posibles tipos de letra
  .GlobalEnv$texto_normal <- fp_text(font.size = 20,
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


  ph_with(.,
    fpar( value = ftext(enunciado, propiedades),
          fp_p = alineacion ),

    location = ph_location_label(ph_label = localizacion)

  )

}
