products = LOAD '/amazon/input/amazon_products.csv'
USING PigStorage(',')
AS (
asin:chararray,
title:chararray,
imgUrl:chararray,
productURL:chararray,
stars:double,
reviews:int,
price:chararray,
listPrice:chararray,
category_id:int,
isBestSeller:chararray,
boughtInLastMonth:int
);


filtered = FILTER products BY price IS NOT NULL;


grouped = GROUP filtered BY price;


result = FOREACH grouped GENERATE
group AS product_price,
COUNT(filtered) AS total_products;


STORE result INTO '/amazon/output/price_analysis'
USING PigStorage(',');