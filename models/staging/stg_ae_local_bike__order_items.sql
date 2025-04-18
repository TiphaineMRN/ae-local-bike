SELECT
    CONCAT(order_id,'_',item_id) AS order_item_id,
    CAST(order_id AS STRING) AS order_id,
    CAST(item_id AS STRING) AS item_id,
    CAST(product_id AS STRING) AS product_id,
    quantity AS item_quantity,
    list_price AS item_price,
    discount,
    quantity*(list_price*(1-discount)) AS total_order_item_amount
FROM {{source("ae_local_bike",'order_items')}}