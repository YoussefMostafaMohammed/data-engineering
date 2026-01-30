vowels=['e','a','i','o','u']
user_input=input("Enter a string: ")
counter=0
for voule in vowels:
    counter+=user_input.count(voule)

print(counter)
