num=input("Please Enter a number: ")

# divide by zero
try:
    ans = (100.0/float(num))
except ZeroDivisionError:
        print("Divide by zero error")
except ValueError:
    print("Error: Please Enter a number")
else:
    print("Process Finished!")

