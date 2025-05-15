# Cargar librerías necesarias
library(randomForest)
library(pdp)
library(ggplot2)
library(dplyr)

# Cargar los datos
house_data <- read.csv("../data/kc_house_data.csv")

# Seleccionar una muestra aleatoria para mejorar rendimiento
set.seed(123)
sampled_house_data <- house_data %>% sample_n(500)

# Entrenar el modelo de bosque aleatorio
house_rf <- randomForest(price ~ bedrooms + bathrooms + sqft_living + sqft_lot + floors + yr_built, data = sampled_house_data, ntree = 100)

# PDP para las cuatro variables más importantes
variables <- c("bedrooms", "bathrooms", "sqft_living", "floors")
for (var in variables) {
  pd <- partial(house_rf, pred.var = var, grid.resolution = 100)
  plot <- autoplot(pd) +
    ggtitle(paste("PDP for", var)) +
    theme_minimal()
  
  # Guardar gráfico como PNG
  ggsave(filename = paste0("../reports/PDP_", var, "_house.png"), plot = plot, width = 8, height = 6)
}

