import java.io.*;
import java.util.*;
import java.util.stream.IntStream;

public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        IntStream.range(1, n+1).forEach( i -> 
          System.out.printf("%"+n+"s%n",new String(new char[i]).replace("\0", "#"))
        );
    }
}
