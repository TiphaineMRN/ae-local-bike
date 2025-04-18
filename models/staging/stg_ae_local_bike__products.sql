SELECT
    CAST(product_id AS STRING) AS product_id,
    product_name,
    CAST(brand_id AS STRING) AS brand_id,
    CAST(category_id AS STRING) AS category_id,
    model_year,
    list_price AS product_price
FROM {{source("ae_local_bike",'products')}}