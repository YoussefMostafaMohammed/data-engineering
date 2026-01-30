def discount_calculator(rate):
    def apply(price):
        return (price*rate)/100.0
    return apply


fun=discount_calculator(50)
print(fun(300))


