# Cargar librerías necesarias
library(randomForest)
library(pdp)
library(ggplot2)
library(dplyr)

# Cargar los datos
bike_data <- read.csv("../data/day.csv")

# Entrenar el modelo de bosque aleatorio
set.seed(123)
bike_rf <- randomForest(cnt ~ yr + temp + hum + windspeed, data = bike_data, ntree = 100)

# PDP para las cuatro variables
variables <- c("yr", "temp", "hum", "windspeed")
for (var in variables) {
  pd <- partial(bike_rf, pred.var = var, grid.resolution = 100)
  plot <- autoplot(pd) +
    ggtitle(paste("PDP for", var)) +
    theme_minimal()
  
  # Guardar gráfico como PNG
  ggsave(filename = paste0("../reports/PDP_", var, ".png"), plot = plot, width = 8, height = 6)
}

