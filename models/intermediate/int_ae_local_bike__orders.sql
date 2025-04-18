SELECT
    o.order_id,
    o.customer_id,
    o.order_date,
    o.required_date,
    o.shipped_date,
    CONCAT (sa.last_name,' ',sa.first_name) AS staff_name,
    so.store_name
FROM {{ref("stg_ae_local_bike__orders")}} o
LEFT JOIN {{ref("stg_ae_local_bike__stores")}} so ON o.store_id = so.store_id
LEFT JOIN {{ref("stg_ae_local_bike__staffs")}} sa ON o.staff_id = sa.staff_id
