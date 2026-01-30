class LibraryBooks():
    def __init__(self,librarian_name):
        self.librarian_name=librarian_name
        self.books={}

    def add_book(self,title, author, is_borrowed=False):
        self.books[title]=[author,is_borrowed]

    def borrow(self,title):
        if self.books[title][1]==True:
            print("Error Books is already borrowed!")
            return
        print(f"you borrowed the book {title} and the author is {self.books[title][0]}")
        self.books[title][1]=True

    def return_book(self,title):
        if self.books[title][1]==False:
            print("you didn't borrow this book to return!")
            return 
        print(f"you returned the book {title} and the author is {self.books[title][0]}")
        self.books[title][1]=False

lib=LibraryBooks("youssef")
lib.add_book("Sherlok Holmes a study in scarlet","Conan Doyle")
lib.borrow("Sherlok Holmes a study in scarlet")
lib.return_book("Sherlok Holmes a study in scarlet")

