from abc import ABC, abstractmethod

class Polygon(ABC):
    @abstractmethod
    def __init__(self):
        pass

    @abstractmethod
    def area(self):
        pass

    @abstractmethod
    def perimeter(self):
        pass

class Rectangle(Polygon):
    def __init__(self, width, height):
        super().__init__()
        self.__width=width
        self.__height=height
    
    def area(self):
        return self.__width*self.__height

    def perimeter(self):
        return self.__width+self.__height   

class Triangle(Polygon):
    def __init__(self, base, height,side_a,side_b):
        super().__init__()
        self.__base=base
        self.__height=height
        self.__side_a=side_a
        self.__side_b=side_b

    def area(self):
        return self.__base * self.__height * self.__side_a * self.__side_b

    def perimeter(self):
        return self.__base + self.__height + self.__side_a + self.__side_b



rec=Rectangle(20,20)
print(rec.area())
print(rec.perimeter())

tri=Triangle(10,10,10,10)
print(tri.area())
print(tri.perimeter())


