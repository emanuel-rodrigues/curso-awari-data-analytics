--mostre os 5 clientes (customer_id) que gastaram mais dinheiro em compras, qual foi o valor total de todas as compras deles, quantidade de compras, 
--e valor médio gasto por compras. Ordene os mesmos por ordem decrescente pela média do valor de compra.


select 	customer.customer_id,
		--payments.payment_value,
		sum(payments.payment_value) as valor_total_compras,
		count(payments.order_id) as qtd_compras,
		(sum(payments.payment_value)/count(payments.order_id)) as valor_medio_compra
from 
olist_customers_dataset as customer
inner join olist_orders_dataset as orders
on customer.customer_id = orders.customer_id
inner join olist_order_payments_dataset as payments
on orders.order_id = payments.order_id

GROUP by customer.customer_id

order by sum(payments.payment_value) desc, (sum(payments.payment_value)/count(payments.order_id)) desc

limit 5