import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Arithmetic {

    public static void main(String[] args) {
    
      double M = 10; // original meal price
      int T = 1; // tip percentage
      int X = 3; // tax percentage
      
      double valor = (double)M+M*X/100 + M*T/100;
       
      int total = (int) Math.round(valor);
      
      System.out.print("The final price of the meal is $"+total+".");
      
    }
}