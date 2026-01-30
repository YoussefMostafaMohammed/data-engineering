products = [("TV", 5000), ("Laptop", 8000), ("Tablet", 3000)]

def sortbyprice(item):
    return item[1]

def sortbynamelenth(item):
    return len(item[0])

def sortbyalpha(item):
    return item[0]



products.sort(key=sortbyprice)
print(products)

products.sort(key=sortbynamelenth)
print(products)


products.sort(key=sortbyalpha)
print(products)


