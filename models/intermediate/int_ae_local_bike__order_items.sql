SELECT
  oi.order_item_id,
  oi.order_id,
  oi.product_id,
  oi.item_quantity,
  oi.total_order_item_amount,
  ROUND(oi.item_quantity*oi.item_price*oi.discount,2) AS discount_amount,
  o.customer_id,
  o.order_date
FROM {{ref("stg_ae_local_bike__order_items")}} oi
LEFT JOIN {{ref("stg_ae_local_bike__orders")}} o ON oi.order_id = o.order_id
