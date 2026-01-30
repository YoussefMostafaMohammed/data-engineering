import json
with open("students.json","r") as file:
    students= json.load(file)


print("Top Students (Grade > 85):")
for student in students:
    if student["grade"]>85:
        print(f"{student['name']} - Grade: {student['grade']}")


