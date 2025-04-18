SELECT
    CONCAT(store_id,'_',product_id) AS stocks_id,
    CAST(store_id AS STRING) AS store_id,
    CAST(product_id AS STRING) AS product_id,
    quantity
FROM {{source("ae_local_bike",'stocks')}}