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


filtered = FILTER products BY category_id IS NOT NULL;


grouped = GROUP filtered BY category_id;


result = FOREACH grouped GENERATE
group AS category_id,
COUNT(filtered) AS total_products;


STORE result INTO '/amazon/output/category_analysis'
USING PigStorage(',');