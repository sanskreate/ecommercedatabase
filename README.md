# 🛒 E-Commerce Database Project

This project showcases the complete lifecycle of building a PostgreSQL-based e-commerce database — from schema design and data insertion to running advanced analytical queries. It simulates a real-world online shopping platform with multiple entities such as customers, products, orders, vendors, and couriers.

---

## 📁 Repository Structure

```
.
├── db_and_table_creation/
│   ├── OnlineShoppingdb.sql
│   ├── *.sql (individual table creation scripts)
│   ├── erd.png
│   └── erdfile.pgerd
│
├── data_insertions/
│   ├── *.csv (sample data)
│   └── *.sql (COPY-based insertion scripts)
│
├── querying/
│    ├──query'n'
│       ├── n.sql (queries)
│       ├── n.csv (outputs)
│       └── n.png (screenshots)
```

---

## 🧱 Database Schema

Includes the following entities:

- **Users & Locations**: `Customer`, `Address`, `City`, `Province`, `Country`, `ZipCode`
- **Shopping Data**: `Product`, `Category`, `Cart`, `Order`, `Review`,  `CartProduct`, `OrderedProduct`
- **Vendors**: `Vendor`, `VendorProduct`, `VendorCourier`
- **Logistics**: `Courier`

📌 **ERD Preview**  
![ERD](db_and_table_creation/erd.png)

---

## 🧮 Data Insertion

- All CSVs in `data_insertions/`
- PostgreSQL `COPY` commands for quick import
- Ensures foreign key dependencies are respected

---

## 📊 Query Collection

The `querying/query'n'` folder contains insights in `.sql`, `.csv`, and `.png` formats.

---

### 📄 Views

| Description | File |
|-------------|------|
| Customer Order Summary View | `customerordersummaryviewquerysql` |
| Product Review Summary View | `productreviewsummaryviewquerysql` |
| Order Tracking View         | `ordertrackingviewquerysql`        |

---

### 📈 Summary & Aggregations

| Description | File |
|-------------|------|
| Average Age of Customers | `avgageofcustomerquery.sql` |
| Average Price Per Category | `avgpricepercategoryquerysql` |
| Average Rating Per Product | `avgratingperproductquerysql` |
| Orders Per Customer | `orderspercustomerquerysql` |
| Revenue Per Vendor | `revenuepervendorquery.sql` |
| Total Orders from Each Province | `totalordersfromprovincequery.sql` |
| Highest Value Order | `highestvalueorderquerysql` |
| Highest Value Province by Orders | `highestvalueprovinceordersquery.sql` |

---

### 📊 Top-K Queries

| Description | File |
|-------------|------|
| Top 3 Cities by Orders | `top3citiesbyordersquerysql` |
| Top 5 Products Sold | `top5productsquerysqI` |
| Vendors of Top 3 Sold Products | `vendorsoftop3soIdproductsquerysqI` |

---

### 🛍️ Vendor/Product Queries

| Description | File |
|-------------|------|
| Products by Each Vendor | `productsbyeachvendorquerysql` |
| Particular Vendors Selling Specific Category | `particularvendorssellingcategoryquery.sql` |
| Vendors with Couriers | `vendorswithcouriersquery.sql` |
| Vendors with Worst Rating | `vendorswithworstratingquerysql` |
| Most Popular Category by Quantity Sold | `mostpopularcategorybyquantityquerysql` |
| Products That Haven’t Been Ordered | `notorderedproductsquerysql` |

---

### 👤 Customer-Specific Queries

| Description | File |
|-------------|------|
| Customers’ Cart Details | `customerscartquery.sql` |
| Customers with No Orders | `customerswithnoordersquery.sql` |
| Customers with Both Cart and Orders | `customemithbothcartandorderquery.sql` |
| Customers with Empty Carts | `customemithemptycartquery.sql` |

---

## 📸 Outputs

Each query includes:
- `.sql` → the logic  
- `.csv` → result set  
- `.png` → visual screenshot (for presentation/documentation)

---

## 🚀 Getting Started

1. **Clone the Repo**
   ```bash
   git clone https://github.com/your-username/ecommerce-database.git
   cd ecommerce-database
   ```

2. **Setup Database**
   ```bash
   psql -U your_user -d your_db -f db_and_table_creation/OnlineShoppingdb.sql
   ```

3. **Insert Data**
   ```bash
   psql -U your_user -d your_db -f data_insertions/insert_all.sql
   ```

4. **Run Queries**
   ```bash
   psql -U your_user -d your_db -f querying/revenuepervendorquery.sql
   ```

---
