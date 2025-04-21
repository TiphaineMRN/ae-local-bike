SELECT
    p.product_name,
    p.product_id,
    p.product_price,
    c.category_name
FROM {{ref("stg_ae_local_bike__products")}} p
LEFT JOIN {{ref("stg_ae_local_bike__categories")}} c on p.category_id=c.category_id