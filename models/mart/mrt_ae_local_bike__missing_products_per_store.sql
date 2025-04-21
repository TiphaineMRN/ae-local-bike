WITH items_to_ship AS (
  SELECT
    o.order_id,
    oi.product_id,
    oi.item_quantity
  FROM {{ref("int_ae_local_bike__orders")}} o
  LEFT JOIN {{ref("stg_ae_local_bike__order_items")}} oi ON o.order_id = oi.order_id
  WHERE o.shipped_date IS NULL
)

SELECT
    sk.store_name,
    sk.product_name,
    sk.product_id,
    SUM(sk.quantity) AS item_stock,
    SUM(its.item_quantity) AS nb_items_ordered,
    SUM(sk.quantity) - SUM(its.item_quantity) AS stock_level
FROM items_to_ship its
LEFT JOIN {{ref("int_ae_local_bike__stocks")}} sk ON sk.product_id = its.product_id
GROUP BY 1,2,3

