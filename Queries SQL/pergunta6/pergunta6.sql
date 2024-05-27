SELECT c.customer_state as 'Estado',
round(
	count(o.order_id) / 
	round(AVG(JULIANDAY(o.order_delivered_customer_date) - JULIANDAY(o.order_approved_at)),1),
2) as `Pedidos/Tempo Médio`
FROM olist_orders_dataset as o
join olist_customers_dataset as c
on o.customer_id = c.customer_id 
group by customer_state
order by `Pedidos/Tempo Médio` DESC;