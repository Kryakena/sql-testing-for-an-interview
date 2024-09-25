--Какое количество платежей было совершено?
   select count(*) from orders o

--Какое количество товаров находится в категории “Игрушки”?
   select count(*)
   from product p 
   join category c on c.category_id = p.category_id 
   where c.category = 'Игрушки'
   
--В какой категории находится больше всего товаров?
   select c.category, count(*)
   from product p 
   join category c on c.category_id = p.category_id 
   group by c.category_id 
   order by 2 desc 
   
   select c.category, count(*)
   from product p 
   join category c on c.category_id = p.category_id 
   group by c.category_id 
   having count(*) =
   	(select max(count)
   	from (
   		select category_id, count(*)
   		from product
   		group by category_id) t)
   		
--Сколько “Черепах” купила Williams Linda?
   select sum(opl.amount)
   from customer c 
   join orders o on o.customer_id = c.customer_id 
   join order_product_list opl on opl.order_id = o.order_id 
   join product p on opl.product_id = p.product_id 
   where concat(c.last_name, '', c.first_name) = 'Williams Linda' and p.product = 'Черепаха'
   
   select * from order_product_list
   
   select * from orders