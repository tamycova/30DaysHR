class Person
{
    public int age;

    public Person(int initial_Age)
    {
        age = initial_Age < 0 ? 0 : initial_Age;
        if (initial_Age < 0)
            Console.WriteLine("This person is not valid, setting age to 0.");
    }
    public void amIOld()
    {
        if (age < 13)
            Console.WriteLine("You are young.");
        else if (age >= 13 && age < 18)
            Console.WriteLine("You are a teenager.");
        else
            Console.WriteLine("You are old.");
    }

    public void yearPasses()
    {
        age++;
    }
}
