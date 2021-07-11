--1- Selecione os dados da tabela de pagamentos onde só apareçam os tipos de pagamento “VOUCHER” e “BOLETO”.

SELECT * from "olist_order_payments_dataset"
WHERE (payment_type = "voucher") or (payment_type = "boleto")

--2- Retorne os campos da tabela de produtos e calcule o volume de cada produto em um novo campo.

SELECT *,  
(product_length_cm * product_height_cm * product_width_cm) as Volume 
FROM "olist_products_dataset"

--3- Retorne somente os reviews que não tem comentários.

SELECT * from "olist_order_reviews_dataset"
WHERE review_comment_message is NULL

--4- retorne pedidos que foram feitos somente no ano de 2017.

SELECT * FROM "olist_orders_dataset"
WHERE order_purchase_timestamp like '2017%'

--5- encontre os clientes do estado de SP e que não morem na cidade de São Paulo.

SELECT customer_state, customer_city FROM "olist_customers_dataset"
WHERE (customer_state = "SP") and (customer_city <> 'sao paulo')