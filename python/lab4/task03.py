user = {"name": "Ahmed", "Authenticated": False} 

def check_authentication(func):
    def wrapper(user):
        if user["Authenticated"]:
            func(user)
        else:
            print("Acess Denied!")
    return wrapper

@check_authentication
def access_portal(user):
    print("Done")

access_portal(user)


