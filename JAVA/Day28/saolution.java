import java.util.Scanner;
import java.util.regex.*;

public class Solution
{
   public static void main(String[] args){
      Scanner in = new Scanner(System.in);
      int testCases = Integer.parseInt(in.nextLine());
      while(testCases-->0){
         String patternw = in.nextLine();
             try{
                 Pattern p = Pattern.compile(patternw);
                 System.out.println("Valid");
             }
          catch(PatternSyntaxException e){System.out.println("Invalid");}
      }
   }
}
