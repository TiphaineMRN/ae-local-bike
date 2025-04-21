SELECT *
FROM {{ ref('int_ae_local_bike__orders') }}
WHERE shipped_date < order_date
   OR required_date < order_date
