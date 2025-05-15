
library(randomForest)
library(pdp)
library(ggplot2)
library(dplyr)


bike_data <- read.csv("data/day.csv")


set.seed(123)
bike_rf <- randomForest(cnt ~ yr + temp + hum + windspeed, data = bike_data, ntree = 100)


variables <- c("yr", "temp", "hum", "windspeed")
for (var in variables) {
  pd <- partial(bike_rf, pred.var = var, grid.resolution = 100)
  plot <- autoplot(pd) +
    ggtitle(paste("PDP for", var)) +
    theme_minimal()
  
  ggsave(filename = paste0("reports/PDP_", var, ".png"), plot = plot, width = 8, height = 6)
}

