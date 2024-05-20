SELECT 
--Categoria
CASE 
	when p.product_category_name = "" THEN 'Produtos Sem Categoria'
	else p.product_category_name
END as `Categoria`,
-- Months
	strftime('%m-%Y',DATE(o.order_approved_at)) AS `Meses`,
--Variação Percentual
	-- Analisar mês anterior
	CASE LAG(strftime('%m-%Y',DATE(o.order_approved_at)), 1, 0) OVER(PARTITION BY CASE 
													when p.product_category_name = "" THEN 'Produtos Sem Categoria'
													else p.product_category_name
												END
									  ORDER BY CASE 
													when p.product_category_name = "" THEN 'Produtos Sem Categoria'
													else p.product_category_name
												END, strftime('%Y' ,DATE(o.order_approved_at)), strftime('%m' ,DATE(o.order_approved_at)))
	--Se tiver vendas
	WHEN strftime('%m-%Y',DATE(o.order_approved_at, '-1 month'))
	--Então deslocar vendas do mês anterior para essa linha
	THEN concat(round(((count(o.order_id) * 1.0)/(LAG(count(o.order_id), 1, 0) OVER(PARTITION BY CASE 
													when p.product_category_name = "" THEN 'Produtos Sem Categoria'
													else p.product_category_name
												END
									  ORDER BY CASE 
													when p.product_category_name = "" THEN 'Produtos Sem Categoria'
													else p.product_category_name
												END, strftime('%Y' ,DATE(o.order_approved_at)), strftime('%m' ,DATE(o.order_approved_at)))*1.0) - 1)*100
	,2),'%')
	--Se não, colocar como 0
	ELSE 'Não houveram vendas no mês anterior'
	END as `Variação Percentual`
from olist_orders_dataset as o
join olist_order_items_dataset as i
on o.order_id = i.order_id 
join olist_products_dataset as p
on i.product_id = p.product_id
WHERE `Meses` NOT null
GROUP by  `Meses`, `Categoria`
ORDER BY `Categoria`, strftime('%Y' ,DATE(o.order_approved_at)), strftime('%m' ,DATE(o.order_approved_at))

