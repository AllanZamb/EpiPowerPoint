#' EpiPowerPoint comprueba requisitos
#' @export

comprueba_Requisitos <- function(){

  #COMPROBAMOS DIRECTORIOS, PLANTILLA Y FUENTES, SI NO EXISTEN LAS DESCARGAMOS

  if (!require("devtools"))
    install.packages("devtools")

  invisible(capture.output(Sys.setlocale("LC_TIME", "es_ES")))


  #COMPROBAMOS LOS DIRECTORIOS ####
  if(!dir.exists("bin")){
    dir.create("bin")
  }else{
    print("Directorio existente")
  }

  if(!dir.exists("bin/font")){
    dir.create("bin/font")
  }else{
    print("Directorio existente")
  }

  if(!dir.exists("bin/pptx")){
    dir.create("bin/pptx")
  }else{
    print("Directorio existente")
  }


  #COMPROBAMOS PLANTILLAS ####
  if(!file.exists("bin/pptx/Plantilla_2022.pptx")){
    download.file("https://github.com/AllanZamb/EpiPowerPoint/blob/main/bin/pptx/Plantilla_2022.pptx", "bin/pptx/Plantilla_2022.pptx", mode = "wb")
  }else{
    print("Ya tenemos la plantilla")
  }

  if(!file.exists("bin/font/Montserrat-Bold.ttf")){
    download.file("https://github.com/AllanZamb/EpiPowerPoint/blob/main/bin/font/Montserrat-Bold.ttf", "bin/pptx/Plantilla_2022.pptx", mode = "wb")
  }else{
    print("Ya tenemos la la tipografia")
  }

  if(!file.exists("bin/font/Montserrat-Regular.ttf")){
    download.file("https://github.com/AllanZamb/EpiPowerPoint/blob/main/bin/font/Montserrat-Regular.ttf", "bin/pptx/Plantilla_2022.pptx", mode = "wb")
  }else{
    print("Ya tenemos la la tipografia")
  }

  #### INSTALACIÓN DE LA FUENTE MONTSERRAT AUTOMÁTICA ####
  if(!require("extrafont")){
    print("Instalando paquetes necesarios...")
    install.packages("extrafont")

    if(!is.null(windowsFonts()[["Montserrat"]])){
      print("Omitiendo instalación de fuente Montserrat")

    }else{
      print("No tenemos la fuente Montserrat, se instalará...")
      font_import(paths = "bin/font/")
      loadfonts()
    }

  }else{
    print("Ya tenemos fuente Montserrat")
  }

  #Comprobamos que existe PACMAN ####
  if(!require("pacman")){
    install.packages("pacman")
  }else{
    print("Comprobando PACMAN")
  }

  #CARGAMOS LOS COMPONENTES NECESARIOS
  pacman::p_load(flextable, officer, magrittr, tidyverse, lubridate)


  #CARGAMOS A LAS VARIABLES DE ENTORNO LAS PROPIEDADES

  #.GlobalEnv$
}
