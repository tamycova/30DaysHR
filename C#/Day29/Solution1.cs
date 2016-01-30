using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

class Solution {
    
    static class StringHelper
    {
        public static string ReverseString(string s)
        {
            char[] arr = s.ToCharArray();
            Array.Reverse(arr);
            return new string(arr);
        }
    }
    
    static void Main(String[] args) {
        int n = Convert.ToInt32(Console.ReadLine());
        while(n > 0){
            
            bool flag = true;
            string s = Console.ReadLine();
            string sReverse = StringHelper.ReverseString(s);
            
            for(int j = 1; j < s.Length; j++){
                if(Math.Abs(s[j] - s[j - 1]) != Math.Abs(sReverse[j] - sReverse[j - 1])) {
                    flag = false;
                    break;
                }
            }
           
            
            if(flag){
                Console.WriteLine("Funny");
            } else {
                Console.WriteLine("Not Funny");
            }
            n--;
        }
    }
}
