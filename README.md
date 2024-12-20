# Bitcoin Price Analysis

This project analyzes Bitcoin price trends using linear and polynomial regression models in R.

## Features

- Data preprocessing and cleaning
- Linear regression model
- Polynomial regression model (degree 2)
- Visualization using ggplot2

## Requirements

- R
- Required packages:
  - ggplot2

## Usage

1. Place your bitcoin price data in a CSV file named `bitcoin_price_data.csv`
2. Run the R script: `Rscript bitcoin_analysis.R`

## Data Format

The input CSV file should contain the following columns:
- date: Date of the price record
- price: Bitcoin price in USD

## Visualization

The script generates a plot showing:
- Actual Bitcoin prices (blue line)
- Linear regression prediction (red line)
- Polynomial regression prediction (green line)