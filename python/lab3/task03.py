voules=['e','a','i','o','u']
user_input=input("Enter a String: ")
user_input.lower()

for voule in voules:
    user_input = user_input.replace(voule,"")

print(user_input)
