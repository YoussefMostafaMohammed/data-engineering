class NegativeDiscountError(Exception):
    def __init__(self, message="Discount must be non-negative"):
        super().__init__(message)
        

def apply_discount(price, discount):
    if discount < 0:
        raise NegativeDiscountError()
    return price - discount


try:
    price = 200
    discount = -50
    final_price = apply_discount(price, discount)
    print(f"Final price: {final_price}")
except NegativeDiscountError as e:
    print(f"Error: {e}") 
