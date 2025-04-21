SELECT
  DATE_TRUNC(oi.order_date, MONTH) AS order_date,
  o.store_name,
  SUM(oi.total_order_item_amount) AS total_orders_amount,
  AVG(oi.total_order_item_amount) AS avg_orders_amount,
  SUM(oi.discount_amount) as total_discount_amount,
  COUNT(DISTINCT oi.order_id) AS nb_orders,
  COUNT(DISTINCT oi.order_item_id) AS nb_products_sold,
  COUNT(DISTINCT oi.order_item_id)/COUNT(DISTINCT oi.order_id) AS avg_nb_item_per_order
FROM {{ref("int_ae_local_bike__order_items")}} oi
LEFT JOIN {{ref("int_ae_local_bike__orders")}} o ON oi.order_id = o.order_id
GROUP BY 
    oi.order_date,
    o.store_name