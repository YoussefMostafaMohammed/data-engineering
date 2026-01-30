saved_password="123"

def get_password(i):
    return input("Enter your password count= "+ str(i+1)+" : ")

def login(password):
    return password==saved_password

def main():
    i=0
    while(True):
        cur_pass=get_password(i)
        status=login(cur_pass)
        if status==True: 
            print("Login Succeeded.")
            break
        else: i+=1
main()
