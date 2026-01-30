class Employee():
    def get_role(self):
        pass

class Manger(Employee):
    def get_role(self):
        return "Manger"

class  Developer(Employee):
    def get_role(self):
        return "Developer"


dev=Developer()
manger=Manger()
print(dev.get_role())
print(manger.get_role())
