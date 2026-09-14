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


filtered = FILTER products BY boughtInLastMonth IS NOT NULL;


grouped = GROUP filtered BY boughtInLastMonth;


result = FOREACH grouped GENERATE
group AS monthly_purchase,
COUNT(filtered) AS total_products;


STORE result INTO '/amazon/output/purchase_analysis'
USING PigStorage(',');