# Amazon Product Data Analysis Using Hadoop

## Big Data Analytics Project Using Hadoop Ecosystem

This project focuses on analyzing a large-scale Amazon product dataset using Hadoop ecosystem technologies.

The project processes approximately **1.4 million Amazon product records** to extract meaningful insights related to product reviews, ratings, pricing, categories, purchase activity, and product popularity.

The analysis is performed using Hadoop HDFS, Apache Pig, and Java-based Hadoop MapReduce programs.

---

## Project Objectives

The main objectives of this project are:

- Store large-scale Amazon product data using Hadoop Distributed File System (HDFS)
- Perform data analysis using Apache Pig
- Develop customized analytical solutions using Java MapReduce
- Analyze product characteristics and customer behavior
- Generate meaningful outputs from large-scale product data

---

## Technologies Used

| Technology | Purpose |
|------------|---------|
| Apache Hadoop | Distributed big data processing framework |
| Hadoop HDFS | Storage of large-scale dataset |
| Apache Pig | High-level data analysis using Pig Latin |
| Hadoop MapReduce | Java-based data processing |
| Java | Development of MapReduce programs |

---

## Dataset Information

### Dataset Name

amazon_products.csv
### Dataset Size


Approximately 1.4 Million Product Records


### Main Attributes

- asin
- title
- imgUrl
- productURL
- stars
- reviews
- price
- listPrice
- category_id
- isBestSeller
- boughtInLastMonth

---

## Project Structure


Amazon-Product-Data-Analysis-Using-Hadoop

├── Dataset
│
├── Pig-Scripts
│
├── MapReduce
│
├── Output
│
├── Report
│
└── README.md


---

## Data Processing Workflow


Amazon Product Dataset

    ↓

   HDFS

    ↓

Apache Pig Analysis

    ↓

Hadoop MapReduce Processing

    ↓

Analytical Output

    ↓

Product Data Insights


---

# Apache Pig Analysis

Apache Pig was used for high-level data processing and analysis.

The following analyses were performed:

## Rating Analysis

Analyzes product distribution based on customer ratings.

## Review Analysis

Analyzes products based on customer review counts.

## Category Analysis

Analyzes product distribution across different categories.

## Price Analysis

Analyzes product price patterns.

## Purchase Analysis

Analyzes product purchase activity based on monthly purchase information.

---

# Hadoop MapReduce Analysis

Java-based Hadoop MapReduce programs were developed for customized processing.

## Review Analysis

Analyzes customer review information and identifies review patterns.

## Top Price Analysis

Identifies products with higher price values from the Amazon dataset.

## Purchase Ranking Analysis

Ranks products based on purchase activity.

## Product Popularity Analysis

Analyzes product popularity using customer interaction information.

---

# HDFS Paths

## Input Dataset Path


/amazon/input/amazon_products.csv


## Output Path


/amazon/output/


---

# Generated Outputs


rating_analysis

review_analysis

category_analysis

price_analysis

purchase_analysis

review_range_analysis

top_price_analysis

purchase_ranking_analysis

product_popularity_analysis


---

# Results

The project successfully processed large-scale Amazon product data using Hadoop ecosystem technologies.

The generated outputs provide information about:

- Product rating patterns
- Customer review behavior
- Category distribution
- Product pricing
- Purchase activity
- Product popularity

---

# Conclusion

This project demonstrates the practical application of Hadoop ecosystem technologies for big data analytics.

Using HDFS, Apache Pig, and Java MapReduce, large volumes of Amazon product data were stored, processed, and analyzed to generate meaningful analytical results.

The project provides practical experience in distributed storage, parallel processing, and big data analysis techniques.

---

# Author

**Sushen1157**

Big Data Analytics Lab Project
