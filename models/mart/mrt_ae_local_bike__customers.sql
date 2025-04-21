SELECT 
    o.customer_id,
    o.store_name,
    MAX(o.order_date) AS max_order_date,
    MIN(o.order_date) AS min_order_date,
    COUNT(DISTINCT o.order_id) AS nb_of_orders,
    SUM(oi.item_quantity) AS nb_of_items,
    SUM(oi.total_order_item_amount) AS total_order_amount,
    AVG(oi.total_order_item_amount) AS avg_order_amount,
    ROUND(DATE_DIFF(DATE(MAX(o.order_date)),DATE(MIN(o.order_date)),DAY)/365.0,2) AS customer_lifespan_days
FROM {{ref("int_ae_local_bike__orders")}} o
LEFT JOIN {{ref("int_ae_local_bike__order_items")}} oi on o.order_id = oi.order_id
GROUP BY 
    o.customer_id,
    o.store_name