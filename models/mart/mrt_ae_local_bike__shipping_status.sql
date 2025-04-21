SELECT
  order_id,
  required_date,
  shipped_date,
  CASE
    WHEN shipped_date > required_date OR (shipped_date IS NULL AND required_date < current_Date()) THEN "late shipment"
    WHEN shipped_date <= required_date THEN "on time"
    END
  AS shipment_status
FROM {{ref("int_ae_local_bike__orders")}}