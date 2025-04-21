{% docs int_ae_local_bike__orders %}
This model enriches order records by joining them with staff and store metadata.

The purpose is to easily answer business questions such as:

- Which staff handled which orders?
- What’s the distribution of orders across stores?
- Are there shipping delays in specific regions or by specific staff?

**Source Models**
- `stg_ae_local_bike__orders`
- `stg_ae_local_bike__staffs`
- `stg_ae_local_bike__stores`

**Notes**

- `staff_name` is constructed by combining `last_name` and `first_name`

{% enddocs %}