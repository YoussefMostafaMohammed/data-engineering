import math
def student_score(name, *grades, bonus=0):
    print(name)
    print(sum(grades)/len(grades))
    print(bonus)
    print(bonus+(sum(grades)/len(grades)))
    grade=bonus+(sum(grades)/len(grades))
    print(f"{name}'s score is {grade}")


student_score("youssef",*[10,20,30],bonus=50)
student_score("Ali", 90, 80, 85) 

student_score("Sara", 88, 79, 95, bonus=5) 
