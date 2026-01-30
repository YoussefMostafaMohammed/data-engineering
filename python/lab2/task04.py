ops=["add","floor","mod","sub","pow"]

def invoke(op,*values):
    ans =0
    match op:
        case "add":
            ans=sum(values)
        case "sub":
            ans=values[0]
            for val in values[1:]:
                ans-=val
        case "mod":
            if values[1] == 0:
                return None
            else:
                ans = values[0] % values[1]
        case "floor":
            if values[1] == 0:
                return None
            else:
                ans = values[0] // values[1]
                return ans
        case "pow":
            ans = values[0] ** values[1]
        case _:
            return None
    return ans

def main():
    num_values=input("Please Enter How many numbers: ")
    nums=[]
    for i in range(int(num_values)):
        num=int(input("Please Enter the number at index "+ str(i+1)+" : "))
        nums.append(num)
    for op in ops:
        ans=invoke(op, *nums)
        if ans is None:
            print("Error Ocuure.")
        else:
            print("the answer of invoking", op, "is", ans, sep=" ", end="\n")

main()
