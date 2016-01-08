import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        for(int i = 0; i < n; i++) {
            char[] spc = new char[n - i - 1];
            Arrays.fill(spc, ' ');
            char[] chr = new char[i + 1];
            Arrays.fill(chr, '#');
            System.out.println(new String(spc) + new String(chr));
        }
    }
}
