class MyBook : Book
{
    private int price;

    public MyBook(String t, String a, int p) : base(t, a)
    {
        price = p;
    }

    public override void display()
    {
        Console.WriteLine($"Title: {title}\r\nAuthor: {author}\r\nPrice: {price}");
    }
}
