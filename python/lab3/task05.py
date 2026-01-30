username=input("Enter your name: ")
username.replace(" ","")
if username.isnumeric():
    print("Please Enter your name not a number: ")
    exit()
email=input("Please Enter your email: ")
if email.find("@")==-1 or email.find(".")==-1 or email.find("@") > email.find("."):
    print("you Entered an Invalid Email")
    exit()

print("Greetings")
