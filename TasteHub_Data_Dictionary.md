
# Data Dictionary- TasteHub Restaurant Ordering system

## Overview
This data dictionary describes all tables, columns, and relationships in the TasteHub ordering System database built using Supabase (PostgreSQL).


## 1. customers Table
| Column Name | Data Type | Description | Constraints |
|--------------|------------|--------------|--------------|
| `customer_id` | SERIAL | Unique ID for each customer | Primary Key |
| `full_name` | TEXT | Customer's full name |  |
| `phone` | VARCHAR(20) | Customer’s phone number | Unique, Not Null |
| `location` | VARCHAR(100) | Customer’s delivery location | Not Null |
| `created_at` | TIMESTAMP | When the customer was added | Default `NOW()` |

---

## 2. menu_items Table
| Column Name | Data Type | Description | Constraints |
|--------------|------------|--------------|--------------|
| `item_id` | SERIAL | Unique ID for each menu item | Primary Key |
| `item_name` | TEXT | Name of the food or drink item |  |
| `category` | VARCHAR(50) | Type of item (e.g., Main Dish, Drink, Dessert) |  |
| `price` | INT | Price of the item | Not Null |
| `available` | BOOLEAN | Whether the item is currently available | Default `TRUE` |

---

## 3. orders Table
| Column Name | Data Type | Description | Constraints |
|--------------|------------|--------------|--------------|
| `order_id` | SERIAL | Unique ID for each order | Primary Key |
| `customer_id` | INT | ID of the customer placing the order | Foreign Key → `customers.customer_id` |
| `order_name` | TEXT | Description of the order |  |
| `order_date` | TIMESTAMP | Date and time of order | Default `NOW()` |
| `status` | VARCHAR(20) | Order progress (e.g., Pending, Preparing, Served, Paid) | Default `'PENDING'` |

---

## 4. order_items Table (Joint Table)
| Column Name | Data Type | Description | Constraints |
|--------------|------------|--------------|--------------|
| `order_item_id` | SERIAL | Unique ID for each order item record | Primary Key |
| `order_id` | INT | ID of the order | Foreign Key → `orders.order_id` |
| `item_id` | INT | ID of the menu item ordered | Foreign Key → `menu_items.item_id` |
| `quantity` | INT | Quantity of the item ordered | Not Null |

---

##  Entity Relationships
| Relationship | Type | Description | Action |
|---------------|------|-------------|---------|
| `orders.customer_id → customers.customer_id` | Many-to-One | One customer can have many orders | ON DELETE CASCADE |
| `order_items.order_id → orders.order_id` | Many-to-One | One order can have many order items | ON DELETE CASCADE |
| `order_items.item_id → menu_items.item_id` | Many-to-One | One menu item can appear in many order items | ON DELETE CASCADE |

---

##  Summary
The **TasteHub Restaurant Ordering System** consists of four main tables — `customers`, `menu_items`, `orders`, and `order_items`.  
These tables are connected through **foreign key relationships** to ensure **data integrity** and **efficient tracking** of customer orders.

- Each **customer** can make multiple **orders**.  
- Each **order** can contain multiple **menu items**.  
- The **order_items** table serves as a bridge between **orders** and **menu_items**, supporting many-to-many relationships.

