#' Agregar propiedades a la diapositiva actual
#' @export

cuadro_grafico <- function(.,localizacion, grafico){
  ph_with(.,
          value = grafico,
          ph_location_label(ph_label = localizacion))


}
