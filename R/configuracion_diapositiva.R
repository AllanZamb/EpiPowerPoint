#' Agregar propiedades a la diapositiva actual
#' @export

configuracion_diapositiva <- function(.,localizacion, enunciado, propiedades, alineacion){
  ph_with(.,
    fpar( value = ftext(enunciado, propiedades),
          fp_p = alineacion ),

    location = ph_location_label(ph_label = localizacion)

  )

}
