WITH product_sales AS (
  SELECT
    product_id,
    order_date,
    SUM(item_quantity) AS items_sold,
    SUM(total_order_item_amount) AS total_sales_amount,
    SUM(discount_amount) AS total_discount_amount
  FROM {{ref("int_ae_local_bike__order_items")}}
  GROUP BY 
    product_id,
    order_date)

SELECT
    ps.order_date,
    ps.product_id,
    p.product_name,
    p.category_name,
    ps.items_sold,
    ps.total_sales_amount,
    ps.total_discount_amount
FROM product_sales ps
LEFT JOIN {{ref("int_ae_local_bike__products")}} p on ps.product_id = p.product_id