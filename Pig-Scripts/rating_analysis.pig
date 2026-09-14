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

filtered = FILTER products BY stars IS NOT NULL AND stars >= 0 AND stars <= 5;

grouped = GROUP filtered BY stars;

result = FOREACH grouped GENERATE
group AS rating,
COUNT(filtered) AS total_products;
STORE result INTO '/amazon/output/rating_analysis' USING PigStorage(',');
