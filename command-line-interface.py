import pymysql

host = "localhost"
usr = "root"
password = "12345678"
database = "demo4"


def connect_to_db():
    db = pymysql.connect(host=host, user=usr, password=password, database=database)
    return db


def authenticate_admin(id, psswd):
    db = connect_to_db()
    cursor = db.cursor()
    cursor.execute(f"select adminID from admin where username='{id}' and pass='{psswd}'")
    data = cursor.fetchall()
    if (len(data) > 0):
        return data[0][0]
    return -1


def authenticate_cust(id, psswd):
    db = connect_to_db()
    cursor = db.cursor()
    cursor.execute(f"select userID from user where email_id='{id}' and pass='{psswd}'")
    data = cursor.fetchall()
    if (len(data) > 0):
        return data[0][0]
    return -1


def print_orders(userID):
    db = connect_to_db()
    cursor = db.cursor()
    print("*ORDER DETAILS*")
    cursor.execute(f"""select product_name, mo.quantity 
    from product join my_orders mo on product.productID = mo.productID 
    where orderID in 
    (select orderID from `order` join user u on u.userID = `order`.userId where `order`.userId={userID});""")
    for i in cursor:
        print(*i, sep=" - ")
    cursor.execute(f"""select sum(order_value) from `order` where userID={userID};""")
    print("Amount: Rs. ", end="")
    for i in cursor:
        print(*i)


def print_cart(userID):
    db = connect_to_db()
    cursor = db.cursor()
    print("*CART ITEMS*")
    cursor.execute(f"""select product_name, cart.quantity 
    from product join cart on product.productID = cart.productID 
    where userID={userID};""")
    for i in cursor:
        print(*i, sep=" - ")
    cursor.execute(f"""select sum(total_cost) from cart where userID={userID};""")
    print("Rs. ", end="")
    for i in cursor:
        print(*i, sep=" ")


def payment_details(userID):
    db = connect_to_db()
    cursor = db.cursor()
    print("*PAYMENT DETAILS*")
    cursor.execute(
        f"""select payment_mode, payment_address from payments where paymentID in (select `order`.paymentID from `order` where `order`.userID={userID});
""")
    for i in cursor:
        print(*i, sep="\t")


def show_items(prompt):
    db = connect_to_db()
    cursor = db.cursor()
    print("*ITEMS*")
    cursor.execute(
        f"""select product.productID, product_name, price from product join product_category_map on product.productID = product_category_map.productID where categoryID in (select categoryID from category where category_name like '%{prompt}%') order by price;
    """)
    for i in cursor:
        print("ID : ", i[0], end="\t")
        print("Name : ", i[1], end="\t")
        print("Price : ", i[2])


def buy_now(userID):
    try:
        db = connect_to_db()
        cursor = db.cursor()
        cursor.execute(
            f"select productID, product_name, price from product where productID in (select cart.productID from cart, product where cart.userID={userID} and cart.productID=product.productID and cart.quantity < product.quantity);")
        for i in cursor:
            print(*i, sep=" ")
        mode = input("Enter mode : ")
        addrs = input("Enter address : ")
        cursor.execute(f"insert into payments(payment_mode, payment_address) values('{mode}','{addrs}');")
        db.commit()
        cursor.execute("select max(paymentID) from payments;")
        payment_id = cursor.fetchall()[0][0]
        cursor.execute(f"select * from payments where paymentID={payment_id}")
        cursor.execute(f"""select sum(total_cost) from cart where userID={userID};""")
        cost = cursor.fetchall()[0][0]
        cursor.execute(
            f"insert into `order`(delivery_address, userId, order_value, delivery_date, couponID, paymentID) values('{addrs}',{userID},{cost},CURRENT_DATE,'ffn368q546',{payment_id});")
        db.commit()
        cursor.execute("select * from `order` where orderID=(select max(orderID) from `order`);")
        l = [i[0] for i in cursor.description]
        print(*l, sep="\t")
        for i in cursor:
            print(*i, sep="\t")
        cursor.execute(
            f"insert into my_orders select `order`.orderID,productID, quantity, total_cost from cart,`order` where cart.userID=`order`.userId and cart.userID={userID} and orderID=(select max(orderID) from `order`);")
        db.commit()
        cursor.execute(
            f"update product, cart set product.quantity=product.quantity-cart.quantity where cart.userID={userID} and cart.productID=product.productID;")
        db.commit()
        cursor.execute(f"delete from cart where cart.userID={userID};")
        db.commit()

    except:
        print("Error")


def cart_total(userID):
    try:
        db = connect_to_db()
        cursor = db.cursor()
        cursor.execute(f"""select sum(total_cost) from cart where userID={userID};""")
        for i in cursor:
            print("Total cost :", i)
    except:
        print("Error!")


def update_product_price(productID, price):
    try:
        db = connect_to_db()
        cursor = db.cursor()
        cursor.execute(f"update product set product.price={price} where productID={productID};")
        db.commit()
        print("Success")
    except Exception as e:
        return str(e)


def add_product_quantity(productID, quantity):
    try:
        db = connect_to_db()
        cursor = db.cursor()
        cursor.execute(f"update product set product.quantity=product.quantity+{quantity} where productID={productID};")
        db.commit()
        print("Success")
    except Exception as e:
        return str(e)


def add_products(name, price, quantity):
    try:
        db = connect_to_db()
        cursor = db.cursor()
        cursor.execute(f"insert into product(product_name, price,quantity) values('{name}',{price},{quantity})")
        db.commit()
        db.close()
        print("Success")
    except Exception as e:
        return str(e)


def add_category(name, info):
    try:
        db = connect_to_db()
        cursor = db.cursor()
        cursor.execute(f"insert into category(category_name, info) values('{name}','{info}')")
        db.commit()
        db.close()
        print("Success")
    except Exception as e:
        return str(e)


def add_product_category_map(productID, categoryID):
    try:
        db = connect_to_db()
        c = db.cursor()
        c.execute(f"insert into product_category_map(productID, categoryID) values ({productID},{categoryID});")
        db.commit()
        db.close()
        print("success")
    except Exception as e:
        return str(e)


def add_product_to_cart(userID, productID, quantity):
    try:
        db = connect_to_db()
        cursor = db.cursor()
        cursor.execute(f"select quantity from product where product.productID={productID}")
        available_qty = cursor.fetchall()[0][0]
       # print(cursor.fetchall()[0][0])
        if (available_qty < quantity):
            print("Can't add to cart, qty too large")
        else:
            cursor.execute(f"select product.price*{quantity} from product where product.productID={productID}")
            totalcost = cursor.fetchall()[0][0]
            cursor.execute(f"insert into cart values({userID},{totalcost},{productID},{quantity})")
            cursor.execute(f"""update product
                                SET product.quantity = product.quantity - {quantity}
                                WHERE product.productID = {productID};""")
            db.commit()
            db.close()
            print("Successfully inserted")
    except Exception as e:
        return str(e)


def update_quantity_if_already_exists(userID, productID, quantity):
    try:
        db = connect_to_db()
        cursor = db.cursor()
        cursor.execute(f"select quantity from product where product.productID={productID};")
        available_qty = cursor.fetchall()[0][0]
        if (available_qty < quantity):
            print("Can't add to cart, qty too large")
        else:
            cursor.execute(f"""
            update cart 
            set cart.quantity = {quantity} where productID={productID} and userID={userID};
            """)
            db.commit()
            cursor.execute(f"""update product
                    SET product.quantity = product.quantity - {quantity}
                    WHERE product.productID = {productID};""")
            db.commit()
            db.close()
            print("Success")
    except Exception as e:
        return str(e)


def cancel_order(orderID):
    try:
        db = connect_to_db()
        cursor = db.cursor()
        cursor.execute(
            f"Select `order`.paymentID from `order` Where `order`.orderID={orderID};")
        # paymentID=curor[0][0]
        data = cursor.fetchall()
        print(data)
        if len(data) == 0:
            return "This order has been cancelled"
            db.close()
        else:
            cursor.execute(
            f"""UPDATE product, my_orders set product.quantity = product.quantity + my_orders.quantity WHERE my_orders.orderID={orderID} and my_orders.productID=product.productID;""")
            db.commit()
            cursor.execute(
            f"delete from payments where payments.paymentID  IN (Select `order`.paymentID from `order` Where `order`.orderID={orderID})")
            db.commit()
            db.close()
            print("Success")
    except Exception as e:
        return str(e)

def OLAP():
    try:
        db = connect_to_db()
        cursor = db.cursor()
        cursor.execute(
            f"""SELECT
    COALESCE(category.category_name, 'Total') AS category,
    SUM(product.quantity) AS total_quantity,
    SUM(product.price * product.quantity) AS total_sales
FROM
    product
    JOIN product_category_map ON product.productID = product_category_map.productID
    JOIN category ON category.categoryID = product_category_map.categoryID
GROUP BY
    category.category_name WITH ROLLUP
ORDER BY
    total_sales DESC;""")

        print("Sales by category : ")
        for i in cursor:
            print(*i, sep=" ")

        cursor.execute(
            f"""SELECT
    YEAR(`order`.delivery_date) AS year,
    MONTH(`order`.delivery_date) AS month,
    COUNT(DISTINCT `order`.userId) AS unique_customers,
    SUM(`order`.order_value) AS total_sales
FROM
    `order`
WHERE
    YEAR(`order`.delivery_date) = 2022
GROUP BY
    YEAR(`order`.delivery_date),
    MONTH(`order`.delivery_date) WITH ROLLUP
ORDER BY
    year ASC,
    month ASC;""")

        print("Unique customer sales by month : ")
        for i in cursor:
            print(*i, sep=" ")

        cursor.execute(
            f"""SELECT
    category.category_name AS Category,
    YEAR(`order`.delivery_date) AS Year,
    MONTH(`order`.delivery_date) AS Month,
    SUM(my_orders.cost) AS Revenue
FROM
    category
    JOIN product_category_map ON category.categoryID = product_category_map.categoryID
    JOIN product ON product_category_map.productID = product.productID
    JOIN my_orders ON product.productID = my_orders.productID
    JOIN `order` ON my_orders.orderID = `order`.orderID
GROUP BY
    category.category_name,
    YEAR(`order`.delivery_date),
    MONTH(`order`.delivery_date) WITH ROLLUP
ORDER BY
    category.category_name ASC,
    YEAR(`order`.delivery_date) ASC,
    MONTH(`order`.delivery_date) ASC;""")

        print("Revenue generated by category : ")
        for i in cursor:
            print(*i, sep=" ")

    except Exception as e:
        return str(e)


# print(authenticate_admin("apachta2","tbGDOvI"))
# print(authenticate_cust("mhabletw@toplist.cz","fP2uVrLlgu"))
# print()
# print_orders(32)
# print()
# print_cart(32)
# payment_details(21)
# show_items("sports")
#
# buy_now(63)

while (True):
    print()
    print("1 - Search Products")
    print("2 - User Login")
    print("3 - Admin Login")
    print("4 - Exit")
    choice = int(input("Enter Choice : "))
    if (choice == 1):
        prompt = (input("Enter Prompt : "))
        show_items(prompt)
    if (choice == 2):
        email = input("Enter Email ID : ")
        passwd = input("Enter Password : ")
        userID = authenticate_cust(email, passwd)
        if (userID > 0):
            print("Successfully Logged In!")
            while (True):
                print()
                print("1 - My Orders")
                print("2 - Show Cart")
                print("3 - Show Payments")
                print("4 - Cart Checkout")
                print("5 - Add products to cart")
                print("6 - Update product qty in cart")
                print("7 - Cancel Order")
                print("8 - Back to Main Menu")
                sub_choice = int(input("Enter choice : "))
                if (sub_choice == 1):
                    print_orders(userID)

                if (sub_choice == 2):
                    print_cart(userID)

                if (sub_choice == 3):
                    payment_details(userID)

                if (sub_choice == 4):
                    buy_now(userID)

                if (sub_choice == 5):
                    productID = int(input("Enter productID : "))
                    quantity = int(input("Enter qty : "))
                    add_product_to_cart(userID, productID, quantity)

                if (sub_choice == 6):
                    productID = int(input("Enter productID : "))
                    quantity = int(input("Enter qty : "))
                    update_quantity_if_already_exists(userID, productID, quantity)

                if (sub_choice == 7):
                    orderID = int(input("Enter orderID to cancel : "))
                    cancel_order(orderID)
                if (sub_choice == 8):
                    break

        else:
            print("invalid username or password")

    if (choice == 3):
        usrname = input("Enter username : ")
        passwd = input("Enter password : ")
        adminID = authenticate_admin(usrname, passwd)
        if (adminID > 0):
            print("Successfully Logged In!")
            while (True):
                print()
                print("1 - Add product quantity")
                print("2 - Update product price")
                print("3 - Add product")
                print("4 - Add category")
                print("5 - Link Product and Category")
                print("6 - Get sales statistics and data")
                print("7 - Logout")
                sub_choice = int(input("Enter choice : "))

                if (sub_choice == 1):
                    productID = int(input("Enter productID : "))
                    qty = int(input("Enter quantity to add : "))
                    add_product_quantity(productID, qty)

                if (sub_choice == 2):
                    productID = int(input("Enter productID : "))
                    price = int(input("Enter new price : "))
                    update_product_price(productID, price)

                if (sub_choice == 3):
                    name = (input("Enter name of the product : "))
                    price = int(input("Enter price : "))
                    quantity = int(input("Enter quantity to add : "))
                    add_products(name, price, quantity)

                if (sub_choice == 4):
                    name = (input("Enter name of the product : "))
                    info = (input("Enter descriptions : "))
                    add_category(name, info)

                if (sub_choice == 5):
                    productID = int(input("Enter productID : "))
                    categoryID = int(input("Enter categoryID"))
                    add_product_category_map(productID, categoryID)

                if (sub_choice == 6):
                    OLAP()

                if (sub_choice == 7):
                    break

        else:
            print("Invalid username or password")
    if (choice == 4):
        break
