class MyBook: Book {
    private int price;
    public MyBook(string t, string a, int price): base(t,a) {
        this.price = price;
    }
    public override void display() {
        Console.WriteLine("Title: {0}", title);
        Console.WriteLine("Author: {0}", author);
        Console.WriteLine("Price: {0}", price);
    }
}
