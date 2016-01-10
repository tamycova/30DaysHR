using System;
using static System.Console;

class Solution
{
    static void Main(String[] args)
    {
        int n = Convert.ToInt32(ReadLine());
        for (int i = 0; i < n; i++)
        {
            WriteLine(Convert.ToString(Convert.ToInt32(ReadLine()), 2));
        }
        ReadKey();
    }
}
