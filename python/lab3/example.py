
x=1
print("x="+str(x))

globals()['x']=2
print("x="+str(x))

locals()['x']=3
print("x="+str(x))

def fun1():
    x=globals()['x']
    print("***************** fun1 globals *************")
    for key in globals():
        print("key=",str(key)," value=",globals()[key])
    
    
    print("\n******************* fun1 locals ********************")
    for key in locals():
        print("key=",str(key)," value=",locals()[key])
    
    globals()['x']=4
    print("x=",str(x))
    
    locals()['x']=5
    print("x=",str(x))

    print("\n***************** fun1 globals *************")
    for key in globals():
        print("key=",str(key)," value=",globals()[key])
    
    print("\n******************* fun1 locals ********************")
    for key in locals():
        print("key=",str(key)," value=",locals()[key])
    
    x=6
    y=6
    print("\n***************** fun1 globals *************")
    for key in globals():
        print("key=",str(key)," value=",globals()[key])
    
    
    print("\n******************* fun1 locals ********************")
    for key in locals():
        print("key=",str(key)," value=",locals()[key])

    def fun2():
        x=10
        print("\n***************** fun2 globals *************")
        for key in globals():
            print("key=",str(key)," value=",globals()[key])
        
        print("\n***************** fun2 locals *************")
        
        for key in locals():
            print("key=",str(key)," value=",locals()[key])
        
        def fun3():
            nonlocal x
            print("\n***************** fun3 globals *************")
            for key in globals():
                print("key=",str(key)," value=",globals()[key])
            print("\n***************** fun3 locals *************")
            for key in locals():
                print("key=",str(key)," value=",locals()[key])
        
        fun3()

    fun2()

fun1()

