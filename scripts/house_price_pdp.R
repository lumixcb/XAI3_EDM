
library(randomForest)
library(pdp)
library(ggplot2)
library(dplyr)


house_data <- read.csv("data/kc_house_data.csv")


set.seed(123)
sampled_house_data <- house_data %>% sample_n(500)


house_rf <- randomForest(price ~ bedrooms + bathrooms + sqft_living + sqft_lot + floors + yr_built, data = sampled_house_data, ntree = 100)


variables <- c("bedrooms", "bathrooms", "sqft_living", "floors")
for (var in variables) {
  pd <- partial(house_rf, pred.var = var, grid.resolution = 100)
  plot <- autoplot(pd) +
    ggtitle(paste("PDP for", var)) +
    theme_minimal()
  

  ggsave(filename = paste0("reports/PDP_", var, "_house.png"), plot = plot, width = 8, height = 6)
}

