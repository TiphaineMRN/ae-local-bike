 SELECT
    staff_id,
    first_name,
    last_name,
    email,
    phone,
    active,
    store_id,
    SAFE_CAST(manager_id AS INT) AS manager_id
FROM {{source("ae_local_bike",'staffs')}}