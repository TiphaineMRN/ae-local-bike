SELECT
    category_id,
    category_name
FROM {{source('ae_local_bike','categories')}}