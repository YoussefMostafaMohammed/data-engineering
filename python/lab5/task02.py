class EmailTool():
    @staticmethod
    def is_valid(email):
        return email.endswith(".com") and email.find("@")!=-1

emails=["mostafa.gmail.com","youssef@gmail.com","a@gmail.com", "x@yahoo", "test.com", "me@site.com", "abc@abc.org"]

for email in emails:
    print(f"{email} is {EmailTool.is_valid(email)}")
