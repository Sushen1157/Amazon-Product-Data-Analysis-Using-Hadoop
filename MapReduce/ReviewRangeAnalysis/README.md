# Review Range Analysis - Hadoop MapReduce

## Overview

This folder contains the Hadoop MapReduce implementation for analyzing Amazon product reviews.

The purpose of this analysis is to process product review information and understand customer interaction based on review counts.

## Objective

The objective of Review Analysis is to analyze products according to the number of customer reviews received.

Products with higher review counts indicate higher customer engagement and interaction.

## Technologies Used

- Hadoop MapReduce
- Java
- HDFS

## Input Dataset

Dataset:

amazon_products.csv

Main Attribute Used:

- asin (Product ID)
- reviews (Customer Review Count)

## MapReduce Components

This analysis contains three Java classes:

### 1. ReviewRangeMapper.java

The Mapper reads product records from the dataset and extracts:

- Product ID
- Review Count

It generates key-value pairs for further processing.

### 2. ReviewRangeReducer.java

The Reducer processes the Mapper output and generates the final review analysis result.

It organizes product review information for analysis.

### 3. ReviewRangeDriver.java

The Driver class controls the Hadoop MapReduce job execution.

It configures:

- Mapper class
- Reducer class
- Input path
- Output path

## HDFS Input Path

