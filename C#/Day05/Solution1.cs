using System;
using System.Collections.Generic;
using System.IO;
using static System.Console;

class Solution
{
    static void Main(String[] args)
    {
        int line = Convert.ToInt32(ReadLine());
        for (int i = 0; i < line; i++)
        {
            string l = ReadLine();
            string[] data = l.Split(' ');
            int a = Convert.ToInt32(data[0]);
            int b = Convert.ToInt32(data[1]);
            int n = Convert.ToInt32(data[2]);
            double res = a + b;
            if (n > 1)
                Write($"{res} ");
            else
                WriteLine($"{res}");
            for (int idx = 1; idx < n; idx++)
            {
                res += b * Math.Pow(2d, idx);
                if (idx + 1 == n)
                    WriteLine(res);
                else
                    Write($"{res} ");
           }
        }
    }
}
