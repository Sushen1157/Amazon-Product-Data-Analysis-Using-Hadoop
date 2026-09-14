# Product Popularity Analysis - Hadoop MapReduce

## Overview

This folder contains the Hadoop MapReduce implementation for analyzing product popularity from the Amazon product dataset.

The analysis identifies popular products based on customer review information. Products with a higher number of reviews represent greater customer interaction and engagement.

## Objective

The objective of Product Popularity Analysis is to identify products with higher customer review counts and analyze product popularity patterns within the Amazon dataset.

This analysis helps to understand which products receive more attention from customers.

## Technologies Used

- Hadoop MapReduce
- Java
- HDFS

## Input Dataset

Dataset:

amazon_products.csv

Main Attributes Used:

- asin (Product ID)
- reviews (Customer Review Count)

## MapReduce Components

This analysis contains three Java classes:

### 1. PopularityMapper.java

The Mapper reads product records from the dataset and extracts:

- Product ID
- Review Count

It generates key-value pairs for further processing.

### 2. PopularityReducer.java

The Reducer processes the Mapper output and calculates product popularity based on review information.

It generates the final product popularity result.

### 3. PopularityDriver.java

The Driver class controls the Hadoop MapReduce job execution.

It configures:

- Mapper class
- Reducer class
- Input path
- Output path

## HDFS Input Path

