using System;

class Solution
{
    static void Main(String[] args)
    {
            double price = Convert.ToDouble(Console.ReadLine());
            double tip = Convert.ToInt32(Console.ReadLine());
            double tax = Convert.ToInt32(Console.ReadLine());
            int res = (int)Math.Round(price + (price * (tip / 100)) + (price * (tax / 100)));
            Console.WriteLine($"The final price of the meal is ${res}.");
    }
}
