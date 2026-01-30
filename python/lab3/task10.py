lst = ["apple", "banana", "cherry", "date"]
if "banana" in lst:
    print("banana Exist!")

print(lst.count("cherry"))

lst.extend(["elderberry", "fig", "grape"])

print(len(lst))

print(', '.join(lst))
