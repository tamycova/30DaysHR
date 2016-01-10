using System;
using static System.Console;

class Solution
{
    static void Main(String[] args)
    {
        int n = Convert.ToInt32(ReadLine());
        for (int i = 0; i < n; i++)
            WriteLine($"{new String(' ', n - i - 1)}{new String('#', i + 1)}");
    }
}
