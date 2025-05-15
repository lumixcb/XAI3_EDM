XAI3_EDM - Model-Agnostic Methods

This repository contains the scripts, data, and report for the XAI3_EDM task, focusing on model-agnostic interpretability using Partial Dependency Plots (PDP) in R. The goal of this project is to gain a better understanding of the influence of various features on predictive models for bike rentals and house prices.

📁 Repository Structure

XAI3_EDM/
├── data/
│   ├── day.csv                # Bike rental data
│   ├── hour.csv               # Hourly bike rental data
│   └── kc_house_data.csv      # House price data
│
├── reports/
│   └── XAI3_Report.docx      # Final report with PDP analysis and interpretations
│
├── scripts/
│   ├── bike_rental_pdp.R     # PDP for bike rental analysis
│   ├── house_price_pdp.R     # PDP for house price analysis
│   └── librerias.R           # Required R libraries
│
├── .gitignore                # Git ignore file
└── README.md                 # Project overview (this file)

📝 Description

1. Bike Rental Analysis

Dataset: day.csv

Goal: Predict the total number of bike rentals (cnt) based on features like year, temperature, humidity, and wind speed.

Script: scripts/bike_rental_pdp.R

Outputs: PDPs for each feature.

2. House Price Analysis

Dataset: kc_house_data.csv

Goal: Predict house prices based on features like number of bedrooms, bathrooms, living area, and floors.

Script: scripts/house_price_pdp.R

Outputs: PDPs for each feature.

🚀 How to Run the Code

Clone the repository:

git clone https://github.com/lumixcb/XAI3_EDM.git
cd XAI3_EDM

Install the required R libraries:

source("scripts/librerias.R")

Run the PDP scripts:

source("scripts/bike_rental_pdp.R")
source("scripts/house_price_pdp.R")

📝 Report

The full analysis and interpretation of the PDPs can be found in the XAI3_Report.docx file in the reports directory.

📂 Data Sources

Bike Rental Data: UCI Machine Learning Repository

House Price Data: Kaggle - King County House Sales

🛠️ Future Improvements

Adding SHAP or ALE plots for a more nuanced interpretation.

Exploring multi-dimensional PDPs.

Creating a web dashboard for interactive PDP exploration.

🤝 Contributing

Feel free to open issues or pull requests if you find bugs or have suggestions for improvement.

📄 License

This project is licensed under the MIT License.

