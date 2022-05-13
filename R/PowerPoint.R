#Instalamos el paquete EpiPowerPoint V1
devtools::install_github("AllanZamb/EpiPowerPoint")

#Cargamos las librerías a utilizar
library(EpiPowerPoint)
library(tidyverse)

#Esta función nos permite instalar automaticamente todo lo que vayamos a necesitar
comprueba_Requisitos()

#Creamos un gráfico de prueba (necesita librería tidyverse)
grafico <- ggplot(mtcars, aes(x=as.factor(cyl) )) +
  geom_bar(color="blue", fill=rgb(0.1,0.4,0.5,0.7) )


#Cargamos la lectura de nuestra pptx
#No es necesario especificar dónde vive la diapositiva, pero se puede hacer
#Al cargar esta función automaticamente se cargan las fuentes y de alineación
Mi_diapositiva <-leer_pptx()

#A continuación le incrustamos los elementos que vamos a necesitar
leer_pptx()  %>%

  ### DIAPOSITIVA DE TITULO ####
  nueva_diapositiva("diapositiva_titulo") %>%

  #Título principal
  cuadro_texto("titulo_general", "PRESENTACION",
               fuente_titulo_general,
               alineacion_centro ) %>%

  #Subtitulo
  cuadro_texto("subtitulo", "Presentacion de la SE18 2022",
               fuente_normal_negrita,
               alineacion_centro ) %>%

  #Cuadro de Fecha
  cuadro_texto("fecha", "13 de mayo de 2022",
               fuente_normal,
               alineacion_centro ) %>%

  ##### DIAPOSITIVA DE GRAFICO O CENTRAL ####
  nueva_diapositiva("diapositiva_texto_grafico") %>%

  cuadro_texto("titulo_diapositiva",
               "Ciudad de México",
               fuente_titulo_diapositiva,
               alineacion_centro) %>%

  #Insertamos el gráfico
  cuadro_grafico("grafico", grafico) %>%

  #insertamos la descripción
  cuadro_texto("descripcion",
               "Se puede observar que durante la segunda semana del mes de enero, los casos de COVID-19, tuvieron un aumento significativo con respecto a la semana previa.",
               fuente_descripcion,
               alineacion_justificada) %>%

  #insertamos la fuente o pie de página
  cuadro_texto("fuente",
               "Datos Abiertos: Dirección General de Epidemiología",
               fuente_fuente,
               alineacion_izquierda) %>%

  ##### DIAPOSITIVA DE CIERRE ####
  nueva_diapositiva("diapositiva_cierre") %>%

  #Mensaje de cierre
  cuadro_texto("cierre",
               "Gracias por su atención",
               fuente_titulo_general,
               alineacion_centro) %>%

  #Imprimimos el documento
  print(., target = "test.pptx", overwrite = T)




#### Para realizar el proceso de iteración o multiples
Mi_diapositiva <-leer_pptx()

entidades <-c("NUEVO LEON", "CIUDAD DE MEXICO", "TAMAULIPAS", "CHIAPAS")

#Se toma como ejemplo la segunda diapositiva
for (i in 1:length(entidades)) {
  Mi_diapositiva %>%
    nueva_diapositiva("diapositiva_texto_grafico") %>%

    cuadro_texto("titulo_diapositiva",
                 entidades[i],
                 fuente_titulo_diapositiva,
                 alineacion_centro)

}
#Cuando termina el ciclo se almacena en un objeto llamado Mi_diapositiva


  print(Mi_diapositiva, target = "test.pptx")



