using System;
using System.Text.RegularExpressions;
using static System.Console;

class Solution
{
    static void Main(String[] args)
    {
        Regex reg = new Regex(@"([a-zA-Z]+)[!\[,\?\.\\_'@+\] ]?");
        MatchCollection match = reg.Matches(ReadLine());
        WriteLine(match.Count);
        foreach (Match m in match)
            WriteLine(m.Groups[1]);
        ReadKey();
    }
}
