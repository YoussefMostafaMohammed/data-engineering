def average(sz,*values):
    if not values:
        return None
    else:
        ans=values[0]
        for val in values[1:]:
            ans+=val
        return ans/sz


def main():
    sz=int(input("Plese Enter how many numbers: "))
    li=[]
    for i in range(sz):
        li.append(int(input("Enter the number count="+str(i+1)+" : ")))
    ans=average(sz,*li)
    if ans is None:
        print("No Numbers is Passed to the function")
    else: 
        print("The average of the numbers is ",ans)

main()
