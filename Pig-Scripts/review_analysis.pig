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
filtered = FILTER products BY reviews IS NOT NULL;
result = FOREACH filtered GENERATE
asin,
reviews;
STORE result INTO '/amazon/output/review_analysis'
USING PigStorage(',');