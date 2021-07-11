--retorne a quantidade de itens vendidos em cada categoria por estado em que o cliente se encontra, mostrando somente categorias que 
--tenham vendido uma quantidade de items acima de 1000.

SELECT 	customer.customer_state,		
		products.product_category_name,
		count(products.product_category_name) as qtd_por_categoria

FROM

olist_customers_dataset AS customer
INNER JOIN olist_orders_dataset AS orders
ON customer.customer_id = orders.customer_id
INNER JOIN olist_order_items_dataset AS items
ON orders.order_id = items.order_id
INNER JOIN olist_products_dataset AS products
ON items.product_id = products.product_id

GROUP BY customer.customer_state, products.product_category_name

HAVING qtd_por_categoria > 1000
