--retorne todos os pagamentos do cliente, com suas datas de aprovação, valor da compra e o valor total que o cliente já gastou 
--em todas as suas compras, mostrando somente os clientes onde o valor da compra é diferente do valor total já gasto.

select 	customer.customer_id,
		orders.order_approved_at,
		payments.payment_value,
		sum(payments.payment_value) as soma
FROM
olist_customers_dataset as customer
inner join olist_orders_dataset as orders
on customer.customer_id = orders.customer_id
inner join olist_order_payments_dataset as payments
on orders.order_id = payments.order_id

group by 1

HAVING payments.payment_value <> soma
