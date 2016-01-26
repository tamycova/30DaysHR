using System;
using System.Collections.Generic;
using System.IO;
using static System.Console;

class Solution
{
    static void Main(String[] args)
    {
        string[] tmp = ReadLine().Split(' ');
        DateTime actualDate = new DateTime(Convert.ToInt32(tmp[2]), Convert.ToInt32(tmp[1]), Convert.ToInt32(tmp[0]));
        tmp = ReadLine().Split(' ');
        DateTime returnDate = new DateTime(Convert.ToInt32(tmp[2]), Convert.ToInt32(tmp[1]), Convert.ToInt32(tmp[0]));
        TimeSpan diff = actualDate - returnDate;
        if (diff.Days > 365)
            WriteLine("10000");
        else if (diff.Days > (365.25 / 12))
            WriteLine($"{Math.Floor(diff.Days / (365.25 / 12)) * 500}");
        else if (diff.Days > 0)
            WriteLine($"{diff.Days * 15}");
        else
            WriteLine("0");
    }
}
