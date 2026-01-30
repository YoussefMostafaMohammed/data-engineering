class Staff():
    def __init__(self):
        pass

    def describe(self):
        pass


class Intern(Staff):
    def __init__(self):
        super().__init__()

    def describe(self):
        return "Intern Doing Training"

class TeamLead(Staff):
    def __init__(self):
        super().__init__()

    def describe(self):
        return "TeamLead Manging Projects"

class HR(Staff):
    def __init__(self):
        super().__init__()

    def describe(self):
        return "HR recruiting employees"

staff_list=[Intern(),HR(),TeamLead()]
for staff in staff_list:
    print(staff.describe())

