 SELECT
    CAST(staff_id AS STRING) AS staff_id,
    first_name,
    last_name,
    email,
    phone,
    active,
    CAST(store_id AS STRING) AS store_id,
    SAFE_CAST(manager_id AS STRING) AS manager_id
FROM {{source("ae_local_bike",'staffs')}}