-- Postgres Table Creation Script
--

--
-- Table structure for table categories
--

CREATE TABLE categories (
  category_id int NOT NULL,
  category_department_id int NOT NULL,
  category_name varchar(45) NOT NULL,
  PRIMARY KEY (category_id)
); 

--
-- Table structure for table customers
--

CREATE TABLE customers (
  customer_id int NOT NULL,
  customer_fname varchar(45) NOT NULL,
  customer_lname varchar(45) NOT NULL,
  customer_email varchar(45) NOT NULL,
  customer_password varchar(45) NOT NULL,
  customer_street varchar(255) NOT NULL,
  customer_city varchar(45) NOT NULL,
  customer_state varchar(45) NOT NULL,
  customer_zipcode varchar(45) NOT NULL,
  PRIMARY KEY (customer_id)
); 

--
-- Table structure for table departments
--

CREATE TABLE departments (
  department_id int NOT NULL,
  department_name varchar(45) NOT NULL,
  PRIMARY KEY (department_id)
);

--
-- Table structure for table order_items
--

CREATE TABLE order_items (
  order_item_id int NOT NULL,
  order_item_order_id int NOT NULL,
  order_item_product_id int NOT NULL,
  order_item_quantity int NOT NULL,
  order_item_subtotal float NOT NULL,
  order_item_product_price float NOT NULL,
  PRIMARY KEY (order_item_id)
);

--
-- Table structure for table orders
--

CREATE TABLE orders (
  order_id int NOT NULL,
  order_date timestamp NOT NULL,
  order_customer_id int NOT NULL,
  order_status varchar(45) NOT NULL,
  PRIMARY KEY (order_id)
);

--
-- Table structure for table products
--

CREATE TABLE products (
  product_id int NOT NULL,
  product_category_id int NOT NULL,
  product_name varchar(45) NOT NULL,
  product_description varchar(255) NOT NULL,
  product_price float NOT NULL,
  product_image varchar(255) NOT NULL,
  PRIMARY KEY (product_id)
);
