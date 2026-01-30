def log_product(name, quantity):
    with open("inventory.txt","a") as file:
        file.write(f"Added: {name} - Quantity: {quantity}\n")
log_product("book",10)
log_product("knife",2)

print("Inventory Log:")
with open("inventory.txt", "r") as file:
    content = file.read()
    print(content)
