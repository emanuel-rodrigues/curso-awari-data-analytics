--mostre o valor vendido total de cada vendedor (seller_id) em cada uma das categorias de produtos, 
--somente retornando os vendedores que nesse somatório e agrupamento venderam mais de $1000. Desejamos ver a 
--categoria do produto e os vendedores. Para cada uma dessas categorias, mostre seus valores de venda 
--d

select 	sellers.seller_id, 
		products.product_category_name,
		sum(items.price) as somatorio
FROM

olist_sellers_dataset as sellers
inner join olist_order_items_dataset as items
on sellers.seller_id = items.seller_id
inner join olist_products_dataset as products
on items.product_id = products.product_id

group by sellers.seller_id, products.product_category_name

HAVING somatorio > 1000
