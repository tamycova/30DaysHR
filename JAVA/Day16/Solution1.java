import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        sc.nextLine();
        int[] A = new int[n];
        for (int i = 0; i < n; i++) A[i] = sc.nextInt();
        int diff = Integer.MAX_VALUE;
        String result = "";

        Arrays.sort(A);
        for (int i = 0; i < n - 1; i++) {
            int a = A[i];
            int b = A[i + 1];
            int tmp_diff = Math.abs(a - b);
            if (tmp_diff < diff) {
                diff = tmp_diff;
                result = a + " " + b;
            } else if (tmp_diff == diff) {
                result += " " + a + " " + b;
            }
        }
        System.out.println(result);
    }
}
