using System;
using static System.Console;

class Solution
{
    static void Main(String[] args)
    {
        int n = Convert.ToInt32(ReadLine());
        string[] arr_temp = ReadLine().Split(' ');
        int[] arr = Array.ConvertAll(arr_temp, Int32.Parse);
        for (int i = n - 1; i >= 0; i--)
            Write($"{arr[i]} ");

    }
}
