def total_price(price: float, quantity: int) -> float:
    if(quantity<0 or price<0): return -1;
    return price*quantity


ans=total_price(1.0,12.3)

if ans==-1:
    print("Invalid Input")
else: 
    print(ans)


ans=total_price(1.0,-1)

if ans==-1:
    print("Invalid Input")
else:
    print(ans)
