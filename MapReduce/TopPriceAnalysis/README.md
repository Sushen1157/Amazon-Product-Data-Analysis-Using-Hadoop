# Top Price Analysis - Hadoop MapReduce

## Overview

This folder contains the Hadoop MapReduce implementation for identifying high-priced products from the Amazon product dataset.

The analysis processes product price information and identifies products with higher price values. It helps to understand the pricing patterns and discover expensive products within the dataset.

## Objective

The objective of Top Price Analysis is to identify products with the highest price values from the Amazon product dataset.

This analysis helps to find expensive products and demonstrates how Hadoop MapReduce can process large-scale product information based on specific attributes.

## Technologies Used

- Hadoop MapReduce
- Java
- HDFS

## Input Dataset

Dataset:

amazon_products.csv

Main Attributes Used:

- asin (Product ID)
- price (Product Price)

## MapReduce Components

This analysis contains three Java classes:

### 1. TopPriceMapper.java

The Mapper reads product records from the dataset and extracts:

- Product ID
- Product Price

It converts price information into a suitable format and generates key-value pairs for further processing.

### 2. TopPriceReducer.java

The Reducer processes the Mapper output and compares product prices.

It identifies products with higher price values and generates the final top price analysis result.

### 3. TopPriceDriver.java

The Driver class controls the Hadoop MapReduce job execution.

It configures:

- Mapper class
- Reducer class
- Input path
- Output path

## HDFS Input Path

