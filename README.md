# 🚲 AE Local Bike 

This repo transforms raw transactional and product data into meaningful metrics across inventory, customer behavior, and sales performance.

---
## 🧠 Project Objective

After a successful pro cycling career driven by data—monitoring **speed, power, heart rate**, and **recovery**—Alexander Anthony brings that same data-driven mindset to grow **Local Bike**, a rising player in soft mobility.

With a modern analytics stack powered by **dbt**, our mission is to:

- Empower the **Operations Team** with actionable insights  
- Optimize logistics, **inventory management**, and shipping  
- Maximize **sales performance** and customer retention  
- Fuel **revenue growth** and data-backed decision-making

This project lays the foundation for turning Local Bike into a true **data-first leader** in sustainable transport.

---

## 🧱 Project Structure

```bash
├── models/
│   ├── staging/              # Cleaned and renamed source data
│   ├── intermediate/         # Business logic, joins, and enrichments
│   └── marts/                # Final KPIs & dashboard-ready models
├── tests/                    # Custom SQL unit tests
└── README.md
```
---
## 📊 Featured marts

| Use Case                            | Models Involved                              |
|-------------------------------------|----------------------------------------------|
| Inventory Gaps & Replenishment   | `mrt_ae_local_bike__missing_products_per_store` |
| Customer Lifecycle & Spend       | `mrt_ae_local_bike__customers`               |
| Sales Trends & Promotions Impact | `mrt_ae_local_bike__monthly_sales_performance` |
| Shipping Delays & Compliance     | `mrt_ae_local_bike__shipping_status`         |
| Top Performing Products           | `mrt_ae_local_bike__products_performance`    |

[Open Dashboard](https://lookerstudio.google.com/reporting/1daee814-98a2-4e4b-a32e-54275c5e619d)

---

## 🧪 Data Quality & Testing

We validate business logic with a mix of:

- **Generic tests**: `not_null`, `unique`, `relationships`  
- **Custom SQL tests**:
  - Negative pricing or discounts
  - Stock vs. items ordered inconsistencies
  - Invalid `shipment_status` values
  - Missing or null core metrics

```bash
dbt test
```
---

## 📚 Documentation

Each model includes a .yml description and a detailed .md doc using {{ doc("model_name") }}.

---
## 👥 About This Project

This analytics platform supports the Operations Team at Local Bike to make decisions powered by clean, trustworthy data.
Final case for the Analytics Engineer training.

