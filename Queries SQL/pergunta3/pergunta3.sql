SELECT c.customer_id as 'ID Cliente', sum(p.payment_value) as 'Valor Gasto'
FROM olist_orders_dataset as o
join olist_customers_dataset as c
on o.customer_id = c.customer_id
join olist_order_payments_dataset as p
on o.order_id = p.order_id 
group by c.customer_id 
order by sum(p.payment_value) DESC
limit 10