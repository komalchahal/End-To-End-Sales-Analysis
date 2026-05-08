Create Database OrderDetails;
Use OrderDetails;
create table customers(
customer_id varchar(50),
customer_unique_id varchar(50),
customer_zip_code_prefix int,
customer_city varchar(50),
customer_state varchar(5));
create table products(
product_id varchar(50),
product_category varchar(50),
product_name_length varchar(10),
product_description_length varchar(10),
product_photos_qty varchar(10),
product_weight_g varchar(10),
product_length_cm varchar(10),
product_height_cm varchar(10),
product_width_cm varchar(10));

set global local_infile = 1;

LOAD DATA  INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/products.csv"
INTO TABLE products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
LOAD DATA  INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sellers.csv"
INTO TABLE sellers
character set latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
LOAD DATA  INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/orders.csv"
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/orders.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
SET
    order_id = @order_id,
    order_approved_at = NULLIF(@order_approved_at,''),
    order_delivered_carrier_date = NULLIF(@order_delivered_carrier_date,''),
    order_delivered_customer_date = NULLIF(@order_delivered_customer_date,'')



create table sellers(
seller_id varchar(50),
seller_zip_code_prefix int,
seller_city varchar(60),
seller_state varchar(10));
create table orders(
order_id varchar(50),
customer_id varchar(50),
order_status varchar(50),
order_purchase_timestamp datetime,
order_approved_at datetime null ,
order_delivered_carrier_date datetime Null,
order_delivered_customer_date datetime null,
order_estimated_delivery_date datetime);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/orders.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
SET
    order_approved_at = NULLIF(TRIM(@order_approved_at),''),
    order_delivered_carrier_date = NULLIF(TRIM(@order_delivered_carrier_date),''),
    order_delivered_customer_date = NULLIF(TRIM(@order_delivered_customer_date),'')
    
create table payments(
order_id varchar(50),
payment_sequential int,
payment_type varchar(50),
payment_installments int,
payment_value float);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/payments.csv'
INTO TABLE payments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
create table order_items(
order_id varchar(50),
order_item_id int,
product_id varchar(50),
seller_id varchar(50),
shipping_limit_date datetime ,
price float,
freight_value float );
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/order_items.csv'
INTO TABLE order_items
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS