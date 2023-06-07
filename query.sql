select * from admin where adminID=3;

# give product detail of search category
select product_name, price from product join product_category_map on product.productID = product_category_map.productID where categoryID in (select categoryID from category where category_name like '%sports%') order by price;

# coupons
delete from coupons where expiry<CURRENT_DATE;
select * from coupons where expiry>CURRENT_DATE and is_used=0;

# get payment details of given user
select payment_mode, payment_address from payments where paymentID in (select `order`.paymentID from `order` where `order`.userID=21);

# get delivery details of order to be delivered at earliest
select first_name, last_name, user_address, phone_number, delivery_date from user join `order` o on user.userID = o.userId where delivery_date in (select min(delivery_date) from `order`);

# postpaid order by date
select sum(order_value), delivery_date from `order` join payments p on p.paymentID = `order`.paymentID where payment_mode='cod' group by delivery_date order by delivery_date;

# all products ordered by a customer
select product_name, mo.quantity from product join my_orders mo on product.productID = mo.productID where orderID in (select orderID from `order` join user u on u.userID = `order`.userId where `order`.userId=32);
# all products in cutomers cart
select product_name, cart.quantity from product join cart on product.productID = cart.productID where userID=21;
#calculate total cart value
select sum(total_cost) from cart where userID=21;

#get top grossing product
select product_name, sum(my_orders.quantity) from my_orders join product p on my_orders.productID = p.productID group by `product_name` order by sum(my_orders.quantity) desc;

#buy now functionality
select productID, product_name, price from product where productID in (select cart.productID from cart, product where cart.userID=45 and cart.productID=product.productID and cart.quantity < product.quantity);
insert into payments(payment_mode, payment_address) values('upi','the white house');
select max(paymentID) from payments;
insert into `order`(delivery_address, userId, order_value, delivery_date, couponID, paymentID) values('white house',45,10000,CURRENT_DATE,'ffn368q546',82);
select * from `order` where orderID=(select max(orderID) from `order`);
insert into my_orders select `order`.orderID,productID, quantity, total_cost from cart,`order` where cart.userID=`order`.userId and cart.userID=45 and orderID=(select max(orderID) from `order`);
update product, cart set product.quantity=product.quantity-cart.quantity where cart.userID=45 and cart.productID=product.productID;

#delete user
delete from user where userID=11 and not exists (select * from `order` where `order`.userId=11);

#constraints check
# user
insert into user(first_name, last_name, user_address, email_id, phone_number, pass, privilege_status) values ('seb',NULL,'downing street','abc@gma.com',12345678910,'gfbrytur','pro');
insert into user(first_name, last_name, user_address, email_id, phone_number, pass, privilege_status) values ('seb',NULL,'downing street','tstooke2r@de.vu',1234568910,'gfbrytur','pro');
# qty can be zero because then user would not be able to buy the last piece
insert into product(product_name, price, quantity) values ('DBMS: handbook',0,0);
# payment constraint check
insert into payments(payment_mode, payment_address) values ('netbanking','10 Brown Lane');
# order constraint check
insert into `order`(delivery_address, userId, order_value, delivery_date, couponID, paymentID) values('Delhi India',45,-1,CURRENT_DATE,NULL,81);
#coupon constraint check
insert into coupons values ('ada532d551',-1,CURRENT_DATE+10,0); #didn't add expiry constraint because everyday table would have invalid values
#cart constraint check
#check qty constraint
insert into cart values (52,654,23,0);
#check total value constraint
insert into cart values (52,-1,23,10);