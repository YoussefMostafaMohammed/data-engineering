user_input=input("Enter a String: ")
user_input.lower()
start=0
pos=[]
while True:
    index=user_input.find("i",start)
    if(index==-1): break
    else: 
        pos.append(index)
        start=index+1

for index in pos:
    print(index)
