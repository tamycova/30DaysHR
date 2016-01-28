import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        int tests = s.nextInt();
        for (int t=0; t<tests; t++) {
            int n = s.nextInt();
            
            int sqrt = (int) Math.ceil(Math.sqrt(n));
            boolean found = n==1;
            for (int i=2; i<=sqrt && !found; i++) {
                if (n!=i && n%i == 0)
                    found = true;
            }
            
            if (found)
                System.out.println("Not prime");
            else
                System.out.println("Prime");
        }
    }
}

