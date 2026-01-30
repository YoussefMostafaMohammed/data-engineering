import csv 
with open("contacts.csv", "r") as file:
    reader = csv.reader(file)
    for row in reader:
        name, email, phone = row
        print(f"{name} - {email} - {phone}")
