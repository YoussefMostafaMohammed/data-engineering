counter=0

def display():
    global counter
    print(counter)

display()
def increment():
    global counter
    counter+=1

increment()
display()

def reset():
    global counter
    counter=0

reset()
display()
