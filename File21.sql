-- Analyze the cumulative revenue generated over time.


select order_date,
sum(revenue) over (order by order_date) as cum_revenue
from
(SELECT `order`.order_date,
       SUM(order_details.quantity * pizzas.price) AS revenue
FROM order_details
JOIN pizzas ON order_details.pizza_id = pizzas.pizza_id
JOIN `order` ON `order`.order_id = order_details.order_id
GROUP BY `order`.order_date) as sales;



