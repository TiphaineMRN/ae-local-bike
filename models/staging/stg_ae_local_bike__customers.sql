SELECT
    CAST(customer_id AS STRING) AS customer_id,
    first_name,
    last_name,
    phone,
    email,
    street,
    city,
    state,
    CAST(zip_code AS STRING) AS zip_code
FROM {{source("ae_local_bike",'customers')}}