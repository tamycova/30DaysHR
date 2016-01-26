using System;
using static System.Console;

class Solution
{
    static void Main(String[] args)
    {
        string[] tmp = ReadLine().Split(' ');
        DateTime actualDate = new DateTime(Convert.ToInt32(tmp[2]), Convert.ToInt32(tmp[1]), Convert.ToInt32(tmp[0]));
        tmp = ReadLine().Split(' ');
        DateTime returnDate = new DateTime(Convert.ToInt32(tmp[2]), Convert.ToInt32(tmp[1]), Convert.ToInt32(tmp[0]));
        int diffYear = actualDate.Year - returnDate.Year;
        int diffMonths = actualDate.Month - returnDate.Month;
        int diffDays = actualDate.Day - returnDate.Day;
        if ((actualDate - returnDate).Days <= 0)
            WriteLine("0");
        else if (diffYear > 0)
            WriteLine("10000");
        else if (diffMonths > 0)
            WriteLine($"{diffMonths * 500}");
        else
            WriteLine($"{diffDays * 15}");
    }
}
