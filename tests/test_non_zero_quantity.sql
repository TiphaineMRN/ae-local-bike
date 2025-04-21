SELECT *
FROM {{ ref("int_ae_local_bike__order_items") }}
WHERE item_quantity <= 0
