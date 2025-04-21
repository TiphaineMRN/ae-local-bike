SELECT *
FROM {{ ref('mrt_ae_local_bike__products_performance') }}
WHERE items_sold < 0 OR total_sales_amount < 0 OR total_discount_amount < 0
