def check(input_val):
    for val in list(range(2,11,2)):
        if(val==input_val):
            break
    else:
        return False
    return True


def main():
    input_val=int(input("Enter the number to search for in the list: "))
    if(check(input_val)):
        print("Found!")
    else:
        print("Not Found!")


main()
