
# Purchase Ranking Analysis - Hadoop MapReduce

## Overview

This folder contains the Hadoop MapReduce implementation for analyzing product purchase activity from the Amazon product dataset.

The analysis ranks products based on their recent purchase information. It uses the `boughtInLastMonth` attribute to understand customer purchasing behavior and identify products with higher purchase activity.

## Objective

The objective of Purchase Ranking Analysis is to identify products based on the number of purchases made in the last month.

This analysis helps to understand product demand patterns and identify products that receive higher customer purchasing interaction.

## Technologies Used

- Hadoop MapReduce
- Java
- HDFS

## Input Dataset

Dataset:

amazon_products.csv

Main Attributes Used:

- asin (Product ID)
- boughtInLastMonth (Monthly Purchase Count)

## MapReduce Components

This analysis contains three Java classes:

### 1. PurchaseRankingMapper.java

The Mapper reads product records from the dataset and extracts:

- Product ID
- Monthly purchase count

It generates key-value pairs for further processing.

### 2. PurchaseRankingReducer.java

The Reducer processes the Mapper output and organizes product purchase information.

It generates the final purchase ranking result based on purchase activity.

### 3. PurchaseRankingDriver.java

The Driver class controls the Hadoop MapReduce job execution.

It configures:

- Mapper class
- Reducer class
- Input path
- Output path

## HDFS Input Path
