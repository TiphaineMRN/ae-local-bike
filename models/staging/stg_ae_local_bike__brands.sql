SELECT
    CAST(brand_id AS STRING) AS brand_id,
    brand_name
FROM {{source('ae_local_bike','brands')}}