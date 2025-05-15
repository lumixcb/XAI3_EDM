# XAI3_EDM - Model-Agnostic Methods

This repository contains the scripts, data, and report for the XAI3_EDM task, focusing on model-agnostic interpretability using Partial Dependency Plots (PDP) in R. The goal of this project is to gain a better understanding of the influence of various features on predictive models for bike rentals and house prices.

## 📝 Description

### 1. Bike Rental Analysis
- **Dataset:** `day.csv`
- **Goal:** Predict the total number of bike rentals (`cnt`) based on features like year, temperature, humidity, and wind speed.
- **Script:** `scripts/bike_rental_pdp.R`
- **Outputs:** PDPs for each feature.

### 2. House Price Analysis
- **Dataset:** `kc_house_data.csv`
- **Goal:** Predict house prices based on features like number of bedrooms, bathrooms, living area, and floors.
- **Script:** `scripts/house_price_pdp.R`
- **Outputs:** PDPs for each feature.

## 🚀 How to Run the Code
1. Clone the repository:
   ```bash
   git clone https://github.com/lumixcb/XAI3_EDM.git
   cd XAI3_EDM

## 📝 Report
The full analysis and interpretation of the PDPs can be found in the XAI3_Report.docx file in the reports directory.

## 📂 Data Sources
**Bike Rental Data:** UCI Machine Learning Repository

**House Price Data:** Kaggle - King County House Sales

