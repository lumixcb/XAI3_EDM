
librerias_necesarias <- c("randomForest", "pdp", "ggplot2", "dplyr")

for (lib in librerias_necesarias) {
  if (!require(lib, character.only = TRUE)) {
    install.packages(lib, dependencies = TRUE)
    library(lib, character.only = TRUE)
  }
}

print("Todas las librerías se han cargado correctamente.")

