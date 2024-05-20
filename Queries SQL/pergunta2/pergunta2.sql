SELECT c.customer_state as 'Estado', round(AVG(JULIANDAY(o.order_delivered_customer_date) - JULIANDAY(o.order_approved_at)),1) as `Tempo Médio (Dias)`
FROM olist_orders_dataset as o
join olist_customers_dataset as c
on o.customer_id = c.customer_id 
group by customer_state
order by `Tempo Médio (Dias)`
