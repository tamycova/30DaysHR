using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using static System.Console;

class Solution
{
  static void Main(String[] args)
  {
    int v = Convert.ToInt32(ReadLine());
    if (v % 2 == 1 || Enumerable.Range(6, 15).Contains(v))
      WriteLine("Weird");
    else
      WriteLine("Not Weird");
  }
}
