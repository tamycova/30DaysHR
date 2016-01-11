using System;
using static System.Console;

namespace Tests
{
    class Program
    {
        static void Main(string[] args)
        {
            int[][] arr = new int[6][];
            for (int arr_i = 0; arr_i < 6; arr_i++)
            {
                string[] arr_temp = ReadLine().Split(' ');
                arr[arr_i] = Array.ConvertAll(arr_temp, Int32.Parse);
            }
            WriteLine(HourGlassSolve(arr));
        }

        static int HourGlassSolve(int[][] arr)
        {
            int max = 0;
            bool flag = false;
            int sum = 0;
            for (int y = 0; y <= 6 - 3; y++)
            {
                for (int x = 0; x <= 6 - 3; x++)
                {
                    sum = HourGlassSum(x, y, arr);
                    if (sum > max || flag == false)
                    {
                        max = sum;
                        flag = true;
                    }
                }
            }
            return max;
        }

        static int HourGlassSum(int x, int y, int[][] arr) => arr[y][x] + arr[y][x + 1] + arr[y][x + 2] + arr[y + 1][x + 1] + arr[y + 2][x] + arr[y + 2][x + 1] + arr[y + 2][x + 2];
    }
}
