using System;
using static System.Console;

class Solution
{
    static void Main(String[] args)
    {
        string input = ReadLine();
        WriteLine(Euclid(Convert.ToInt32(input.Split(' ')[0]), Convert.ToInt32(input.Split(' ')[1])));
    }

    public static int Euclid(int a, int b)
    {
        if (a == 0 || b == 0)
            return Math.Max(a, b);
        else if (a > b)
            return Euclid(a % b, b);
        else
            return Euclid(a, b % a);
    }
}
