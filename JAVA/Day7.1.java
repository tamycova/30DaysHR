import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in).useDelimiter("\\n");
        Integer N = in.nextInt();
        String  S = in.next();
        List<String> Slist = Arrays.asList((S.split(" ")));
        Collections.reverse(Slist);
        System.out.println(String.join(" ", Slist));
    }
}
