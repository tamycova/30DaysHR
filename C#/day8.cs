using System;
using System.Collections.Generic;
using static System.Console;

class Solution
{
    static void Main(String[] args)
    {
        int n = Convert.ToInt32(ReadLine());
        Dictionary<string, string> dic = new Dictionary<string, string>();
        for (int i = 0; i < n; i++)
        {
            string name = ReadLine();
            string phone = ReadLine();
            dic.Add(name, phone);
        }
        while (true)
        {
            string input = ReadLine();
            if (input == null)
                break;
            string phone;
            if (dic.TryGetValue(input, out phone) == true)
                WriteLine($"{input}={phone}");
            else
                WriteLine("Not found");
        }
    }
}
