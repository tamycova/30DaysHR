import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        int iter = sc.nextInt();
        for(int i = 0; i < iter; i++) {
            int a = sc.nextInt();
            int b = sc.nextInt();
            int N = sc.nextInt();
            
            int calc = 0;
            for(int j = 0; j < N; j++) {
                calc+=Math.pow(2,j) * b;
                System.out.print(a + calc + " ");
            }
            System.out.println("");
        }
    }
}
