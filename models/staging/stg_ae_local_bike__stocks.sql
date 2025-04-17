SELECT
    CONCAT(store_id,'_',product_id) AS stocks_id,
    store_id,
    product_id,
    quantity
FROM {{source("ae_local_bike",'stocks')}}