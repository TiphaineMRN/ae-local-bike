SELECT *
FROM {{ ref('mrt_ae_local_bike__customers') }}
WHERE customer_lifespan_days < 0