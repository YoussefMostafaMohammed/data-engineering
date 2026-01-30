class Course():
    def __init__(self, title, hours):
        self.title = title
        self.hours = hours

    def __add__(self,other):
        return self.hours+other.hours
    
    def __str__(self):
        return f"Course: {self.title} ({self.hours} hours)"


course1 = Course("Math", 40)
course2 = Course("Physics", 35)

combined_course = course1 + course2


print(course1)
print(course2)
print(combined_course)
