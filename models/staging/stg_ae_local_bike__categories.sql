SELECT
    CAST(category_id AS STRING) AS category_id,
    category_name
FROM {{source('ae_local_bike','categories')}}