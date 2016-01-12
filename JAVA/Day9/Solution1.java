import java.io.*;
import java.util.*;
public class Solution {
    public static void main(String args[]){
        Scanner in=new Scanner(System.in);
        //Take Input
        int a=in.nextInt();
        int b=in.nextInt();
        int gcd=find_gcd(a,b);
        System.out.println(gcd);
    }
   static  int find_gcd(int a,int b){
       if(a==b){
           return a;
       }else{
           if(a > b){
            return find_gcd( a - b, b);   
           }else{
            return find_gcd( b - a, a); 
           }
       }
      }
}
