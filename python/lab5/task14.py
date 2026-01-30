class ZeroDivisionError(Exception):
    def __init__(self, message="Divide by zero error"):
        super().__init__(message)

class Number():
    def __init__(self, value):
        self.value=value
    
    def __truediv__(self,other):
        if other.value==0:
            raise(ZeroDivisionError)
        return self.value//other.value

    def __add__(self,other):
        return self.value+other.value
    def __sub__(self,other):    
        return self.value-other.value
    def __mul__(self,other):
        return self.value*other.value

num1=Number(30)
num2=Number(5)

print("sum =",num1+num2)

print("sub =",num1-num2)

print("mul =",num1*num2)


num1=Number(10)
num2=Number(0)

try:
    print("div", num1/num2)
except ZeroDivisionError:
    print("Error: Divide by zero")
else:
    print("No Exception Happened")
