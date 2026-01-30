def checkType(input_value):
    is_string=False
    is_float=False
    for ch in input_val:
        if (not ch.isdigit() and ch!='.'):
            is_string=True
        if ch=='.':
            is_float=True
    if(is_string):print("String is Detected.")
    elif(is_float):print("Float is Detected.")
    else: print("Int is Detected")

for i in range(3):
    input_val=input("Please Enter a value: ")
    checkType(input_val)
