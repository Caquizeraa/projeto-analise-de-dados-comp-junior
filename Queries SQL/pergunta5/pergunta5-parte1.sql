SELECT i.seller_id as 'ID Vendedor', count(o.order_status) as `Pedidos Cancelados`
from olist_orders_dataset as o
join olist_order_items_dataset as i
on o.order_id = i.order_id 
where order_status = 'canceled'
group by i.seller_id 
ORDER by `Pedidos Cancelados` DESC
limit 5