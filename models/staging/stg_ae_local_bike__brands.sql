SELECT
    brand_id,
    brand_name
FROM {{source('ae_local_bike','brands')}}