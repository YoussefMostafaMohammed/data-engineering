class ExpenseTracker():
    def __init__(self, owner):
        self.__owner=owner
        self.__total=0

    def add_expense(self, amount):
        self.__total+=amount

    def get_total(self):
        return self.__total


tracker = ExpenseTracker("Youssef")

tracker.add_expense(100)
tracker.add_expense(50)

print(tracker.get_total())
