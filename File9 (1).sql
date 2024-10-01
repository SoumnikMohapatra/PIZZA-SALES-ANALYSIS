create database pizzahut;
use pizzahut;
CREATE TABLE `order` (
    order_id INT NOT NULL PRIMARY KEY,
    order_date DATE NOT NULL,
    order_time TIME NOT NULL
);
SELECT * FROM `order`;
SELECT HOUR(order_time) AS hour, COUNT(order_id) AS order_count
FROM `orders`
GROUP BY HOUR(order_time);

CREATE TABLE order_details (
    order_details_id INT NOT NULL PRIMARY KEY,
    order_id int NOT NULL,
    pizza_id Text NOT NULL
);
alter table order_details
add column quantity int not null;

SELECT HOUR(order_time) AS hour, COUNT(order_id) AS order_count
FROM `orders`
GROUP BY HOUR(order_time);





