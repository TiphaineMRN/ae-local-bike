SELECT
    sk.stocks_id,
    sr.store_name,
    sk.product_id,
    p.product_name,
    sk.quantity
FROM {{ref("stg_ae_local_bike__stocks")}} sk
LEFT JOIN {{ref("stg_ae_local_bike__stores")}} sr ON sk.store_id = sr.store_id
LEFT JOIN {{ref("stg_ae_local_bike__products")}} p ON sk.product_id = p.product_id