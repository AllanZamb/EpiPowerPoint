#' Agregar propiedades a la diapositiva actual, nos enfocamos en un cuadro con texto
#' @export

cuadro_texto <- function(.,localizacion, enunciado, propiedades, alineacion){

  ph_with(.,
    fpar( value = ftext(enunciado, propiedades),
          fp_p = alineacion ),

    location = ph_location_label(ph_label = localizacion)

  )

}
