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
    print("3 - Exit")
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
                print("5 - Back to Main Menu")
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
                    break
        else:
            print("invalid username or password")
    if (choice == 3):
        break
