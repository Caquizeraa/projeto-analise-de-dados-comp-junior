SELECT 
CASE 
	when p.product_category_name = "" THEN 'PRODUTOS SEM CATEGORIA'
	else p.product_CATEGORY_NAME
END as 'Categoria', sum(o.price) as 'Receita Gerada'
from olist_products_dataset as 'p'
left join olist_order_items_dataset as 'o'
on o.product_id = p.product_id
group by p.product_category_name;