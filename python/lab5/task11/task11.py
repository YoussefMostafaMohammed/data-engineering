import json

class Task:
    def __init__(self, title, completed=False):
        self.title = title
        self.completed = completed

tasks = [
    Task("Buy groceries", False),
    Task("Complete assignment", True),
    Task("Call Mom", False)
]

tasks_dict = [task.__dict__ for task in tasks]

with open("tasks.json", "w") as file:
    json.dump(tasks_dict, file, indent=4)

print("Tasks saved to tasks.json")

