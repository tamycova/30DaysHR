#Write MyBook class
class MyBook(Book):
    def __init__(self, title, author, price):
        self.price = price
        super(MyBook, self).__init__(title, author)
    def display(self):
        print "Title:", self.title
        print "Author:", self.author
        print "Price:", self.price
