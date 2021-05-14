show databases;
use gameshopdb;
CREATE TABLE orders(
  order_id int NOT NULL AUTO_INCREMENT,
  customer_id int NOT NULL,
  product_id int NOT NULL,
  date_placed date NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO CUSTOMERS (customer_id,name, email,house_number,postcode)
VALUES (1, 'Ramesh', 'Ahmedabad@gmail.com', 2000, 'er245' );

INSERT INTO CUSTOMERS (customer_id,name, email,house_number,postcode)
VALUES (2, 'Ameti', 'ameti@gmail.com', 2566, 'UF245' );

INSERT INTO CUSTOMERS (customer_id,name, email,house_number,postcode)
VALUES (3, 'Mame', 'Tg@gmail.com', 2566, 'ok245' );

INSERT INTO CUSTOMERS (customer_id,name, email,house_number,postcode)
VALUES (4, 'Hani', 'hani@gmail.com', 666, 'UF789' );

INSERT INTO CUSTOMERS (customer_id,name, email,house_number,postcode)
VALUES (5, 'Aya', 'Ayai@gmail.com', 757, 'RI789' );

INSERT INTO Products (Product_id,title, price,stock)
VALUES (1,  'Wedding', 757.99, 15 );
INSERT INTO Products (Product_id,title, price,stock)
VALUES (2,  'Dinner', 89.99, 85 );
INSERT INTO Products (Product_id,title, price,stock)
VALUES (3,  'Occasional', 60.99, 85 );
INSERT INTO Products (Product_id,title, price,stock)
VALUES (4,  'Summer', 70.99, 100 );
INSERT INTO Products (Product_id,title, price,stock)
VALUES (5,  'Winter', 170.99, 189 );

INSERT INTO Orders ( customer_id,product_id, date_placed)
VALUES ( 2 ,  4, "2021-05-11");
INSERT INTO Orders ( customer_id,product_id, date_placed)
VALUES ( 3 ,  3,  "2021-11-11");
INSERT INTO Orders ( customer_id,product_id, date_placed)
VALUES ( 1 ,  5,  "2019-03-01");
INSERT INTO Orders ( customer_id,product_id, date_placed)
VALUES ( 4 ,  4, "2018-04-01");
INSERT INTO Orders ( customer_id,product_id, date_placed)
VALUES ( 5 ,  3,  "2021-04-08");



select * from orders;


