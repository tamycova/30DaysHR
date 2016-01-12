class Grade : Student
{
    private int score;

    public Grade(string fname, string lname, int phone, int score) : base(fname, lname, phone)
    {
        this.score = score;
    }

    public char calculate()
    {
        if (score < 40)
            return 'D';
        else if (score >= 40 && score < 60)
            return 'B';
        else if (score >= 60 && score < 75)
            return 'A';
        else if (score >= 75 && score < 90)
            return 'E';
        else
            return 'O';
    }
}
