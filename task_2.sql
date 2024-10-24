USE alx_book_store;

CREATE table book(book_id ( PRIMARY KEY),
title VARCHAR(130),
author_id (Foreign Key referencing Authors table),
price DOUBLE,
publication_date DATE);

CREATE TABLE Authors (author_id (PRIMARY KEY)),
author_name VARCHAR(215));

CREATE TABLE Customers (customer_id (PRIMARY KEY),
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT);

CREATE TABLE Orders(order_id (PRIMARY KEY),
customer_id (FOREIGN KEY REFERENCES Customers(customer_id)),
order_date DATE);

CREATE TABLE Order_Details (orderdetailid (PRIMARY KEY),
order_id (FFOREIGN KEY REFERENCES Orders(Orders_id)),
book_id (FOREIGN KEY REFERENCES Books(book_id)),
quantity DOUBLE);
